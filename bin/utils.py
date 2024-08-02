import hashlib
import platform
import subprocess
import sys
import os
import tempfile
from urllib.parse import urlparse
import urllib.request
import tarfile

from pathlib import Path
from dataclasses import dataclass
from typing import List

@dataclass
class TarSource:
    system: str
    machine: str

    url: str
    sha256sum: str

    executable_path: str

    def verify(self, filename):
        computed_checksum = hashlib.sha256(Path(filename).read_bytes()).hexdigest()
        if computed_checksum != self.sha256sum:
            raise Exception("File verification failed.")

    def is_match(self):
        return self.system == platform.system() and self.machine == platform.machine()
    
    def fetch_and_run(self):
        script_folder = os.path.realpath(os.path.dirname(__file__))
        download_folder = os.path.join(script_folder, "downloads", self.sha256sum)

        if not os.path.exists(download_folder):
            filename = os.path.basename(urlparse(self.url).path)
            with tempfile.TemporaryDirectory() as tmpdir:
                tar_file = os.path.join(tmpdir, filename)
                urllib.request.urlretrieve(self.url, tar_file)
                self.verify(tar_file)

                os.makedirs(download_folder)
                tar = tarfile.open(tar_file, "r:gz")
                tar.extractall(download_folder)
                tar.close()

        executable_file = os.path.join(download_folder, self.executable_path)
        subprocess.run([executable_file] + sys.argv[1:])

class HomebrewSource:
    def __init__(self, package_name: str, executable_path: str):
        self.package_name = package_name
        self.executable_path = executable_path

    def is_match(self):
        return platform.system() == "Darwin"

    def fetch_and_run(self):
        prefix = subprocess.check_output(f"brew --prefix {self.package_name}", shell=True, encoding="utf-8").strip()
        
        if not os.path.exists(f"{prefix}/{self.executable_path}"):
            ensure_brew_package(self.package_name)
        
        subprocess.run([f"{prefix}/{self.executable_path}"] + sys.argv[1:])

class AptSource:
    def __init__(self, package_name: str, exec_path: str):
        self.package_name = package_name
        self.exec_path = exec_path

    def is_match(self):
        return subprocess.run("which apt", shell=True).returncode == 0

    def fetch_and_run(self):
        if not os.path.exists(self.exec_path):
            subprocess.run(f"apt install -y {self.package_name}", shell=True)
        
        subprocess.run([self.exec_path] + sys.argv[1:])

def download_and_run(*sources: HomebrewSource):
    for source in sources:
        if source.is_match():
            source.fetch_and_run()
            return

    raise Exception(f"No download found for system: {platform.system()}, machine: {platform.machine()}")
    
def ensure_brew_package(package: str):
    result = subprocess.run(f"brew list {package}", shell=True, capture_output=True)
    if result.returncode != 0:
        print(f"Installing {package} from homebrew...")
        subprocess.check_call(f"brew install {package}", shell=True)
