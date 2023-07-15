#!/bin/bash
git clone --depth=1 https://github.com/tfutils/tfenv.git ~/.tfenv #clone repo to ~/.tfenv
echo 'export PATH="$HOME/.tfenv/bin:$PATH"' >> ~/.bash_profile  #information about where tfenv located put in ~/.bash_profile
sudo ln -s ~/.tfenv/bin/* /usr/local/bin  #short cut for .tfenv be accessiable by everbody

# bash localscript.sh
tfenv