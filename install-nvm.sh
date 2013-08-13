if [[ ! -d "nvm" ]]; then
    git clone git://github.com/creationix/nvm.git >/dev/null
fi

# Clear and set NVM_* env variables to our installation
mkdir -p .nvm
export NVM_DIR=$( (cd .nvm && pwd) )
unset NVM_PATH
unset NVM_BIN

# Load nvm into current shell
. nvm/nvm.sh #>/dev/null

# Install and use latest 0.10.* node
nvm install 0.10 #>/dev/null
nvm alias default 0.10 #>/dev/null
nvm use default #>/dev/null

# Find and output node's bin directory
NODE=$(which node)
echo $(dirname ${NODE})
