from setuptools import find_packages
from setuptools import setup

with open('requirements.txt') as f:
    required = f.read().splitlines()

setup(name='FlaskDemo',
      version='1.0',
      description='Collection of flask demos',
      install_requires=required,
      packages=find_packages(),
      python_requires='>=3.8')
