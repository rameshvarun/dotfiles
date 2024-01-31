import hashlib
import platform

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

