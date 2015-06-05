# first run: `chmod u+x .setup.sh` to execute this script
# create ssh keys
ssh-keygen -t rsa -b 4096 -C "tom@buchok.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
# install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
ln .vimrc ~/.vimrc
# vim bundles
cd ~/.vim/bundle
# install github color theme
git clone https://github.com/endel/vim-github-colorscheme.git
# install jade syntax
git clone https://github.com/digitaltoad/vim-jade.git
ln .vimrc ~/.vimrc
ln .tmux.conf ~/.tmux.conf
