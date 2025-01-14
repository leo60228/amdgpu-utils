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
      licene="GPL-3",
      package_data={'GPUmodules':['amd_pci_id.txt']}
)
