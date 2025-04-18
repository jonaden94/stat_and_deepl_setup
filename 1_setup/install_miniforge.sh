# create symbolic links to data storages
cd ~
ln -s /mnt/vast-kisski/projects/kisski-statis-deep-learning $HOME/projects
mkdir -p $HOME/projects/$USER

# download and install miniforge
wget -O Miniforge3.sh "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
bash Miniforge3.sh -b -p "$HOME/conda"
rm Miniforge3.sh

# initialize conda and mamba in shell
source "$HOME/conda/etc/profile.d/conda.sh"
source "$HOME/conda/etc/profile.d/mamba.sh"
conda init
mamba init

# alias conda to mamba
echo "alias conda='mamba'" >> ~/.bashrc
alias conda='mamba'
