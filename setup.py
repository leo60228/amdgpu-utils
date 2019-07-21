#!/usr/bin/env python3
from distutils.core import setup

setup(name='amdgpu-utils',
      version='2.5.2',
      description='Ricks-Lab AMD GPU Utilities',
      author='RueiKe',
      author_email='rueikes.homelab@gmail.com',
      url='https://github.com/Ricks-Lab/amdgpu-utils',
      packages=['GPUmodules'],
      scripts=['amdgpu-chk','amdgpu-ls','amdgpu-monitor','amdgpu-pac','amdgpu-pciid','amdgpu-plot'],
      license="GPL-3.0-only",
      classifiers=["License :: OSI Approved :: GNU General Public License v3 (GPLv3)"],
      package_data={'GPUmodules':['amd_pci_id.txt']}
)
