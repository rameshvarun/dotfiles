import hashlib
import platform
import subprocess

from pathlib import Path
from dataclasses import dataclass
from typing import List

@dataclass
class Download:
    system: str
    machine: str

    url: str
    sha256sum: str

def get_download(downloads: List[Download]) -> Download:
    for download in downloads:
        if download.system == platform.system() and download.machine == platform.machine():
            return download
        
    raise Exception(f"No download found for system: {platform.system()}, machine: {platform.machine()}")

def ensure_brew_package(package: str):
    result = subprocess.run(f"brew list {package}", shell=True, capture_output=True)
    if result.returncode != 0:
        print(f"Installing {package} from homebrew...")
        subprocess.check_call(f"brew install {package}", shell=True)