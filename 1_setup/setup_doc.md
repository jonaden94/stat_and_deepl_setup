# Prelminaries
* This repository should be cloned in your home directory.
* It is further assumed that you use a linux shell, e.g. ``bash``. You can choose which shell is used on the NHR on your AcademicCloud profile under ``OTHER``:
* The shell commands provided in this guide assume that you have a shell opened with the root directory of this repository as the working directory.

# 1. installing miniforge

* miniforge is a minimal distribution of conda that allows to structure packages, for example python packages, into environments.
* Running the following shell script will automatically install miniforge there:
```
source 1_setup/install_miniforge.sh
```
* The installation of miniforge might take 1-2 minutes and you need to reopen your shell after the installation.

# 2. symbolic link to project folder
* The setup command that you just ran also created a symbolic link to the project folder. It should be visible as "projects" in your home directory.
* This is where you should put your code and data.
* Monitor your disc space regularly. You only have 40 GB in your home directory. A default environment with Pytorch is already 20 GB. So you cannot put unnecessary stuff there.
* You can monitor your disc space with `show-quota`

# 3. Creating conda environment with Pytorch
* Once miniforge has been installed and initialized, you can create your own conda environments. The examples in this guide only require pytorch to be installed. If conda is activated, you can install an environment containing pytorch by running the following command:
```
source 1_setup/create_env.sh
```
* The creation of the environment will take while since Pytorch is quite a big package (roughly 15 minutes).
