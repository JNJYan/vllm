apt update && apt install htop zsh ccache
bash -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions)/g' ~/.zshrc && sed -i 's/%c/%d/g' ~/.oh-my-zsh/themes/cloud.zsh-theme && sed -i 's/robbyrussell/cloud/g' ~/.zshrc
export MAX_JOBS=4
pip3 install -e . -i https://pypi.tuna.tsinghua.edu.cn/simple --trusted-host pypi.tuna.tsinghua.edu.cn > output.log

export VLLM_USE_MODELSCOPE=True
# pip install ERROR: Cannot unpack file 问题可以直接源码安装
pip install git+https://github.com/modelscope/modelscope.git