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

# 2. folder structure
* The setup command that you just ran also created a symbolic link to the project folder. It should be visible as "projects" in your home directory.
* Within the projects folder, there should be a folder that is named after your username. This is where you should put your research repositoy.
* Monitor your disc space regularly. You only have 40 GB in your home directory. A default environment with Pytorch is already a bit mroe than 20 GB. So you cannot put unnecessary stuff there.
* You can monitor your disc space with `show-quota`
* In addition to your personal folder named after your username, you should use a shared folder that both you and your group member can access. I already created that folder for you.
* After installation of conda and creation of symbolic links and folders, you should have the following structure in your home directory:
```
$HOME
├── conda     
└── projects
    ├── u16701     # your username (this is where your code goes)                 
    └── duan_fu    # your shared group folder (this is where your data goes)
```
* I would not advise you to write code in the shared folder. Rather, you should collaborate on a repository via github.
# 3. Creating conda environment with Pytorch
* Once miniforge has been installed and initialized, you can create your own conda environments. I already prepared a setup script with many useful packages. If conda is activated, you can install this environment running the following command:
```
source 1_setup/create_env.sh
```
* The creation of the environment will take a while (20-25 minutes), mostly because Pytorch is quite a big package.
