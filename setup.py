from setuptools import find_packages, setup

setup(
    name="preparation_exercices",
    version="0.1.0",
    description="un exercice pour les etudiants",
    long_description=open("README.md").read(),
    author="brendan.studer",
    packages=find_packages(
        where="src",
    ),
    package_dir={"": "src"},
    install_requires=open("requirements.txt").readlines()
)
