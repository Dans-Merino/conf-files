
if ! hash curl 2>/dev/null; then
    apt-get install curl -y
fi

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

if !hash pip 2>/dev/null; then
    apt-get install pip -y
fi

pip install jedi

#vim -c ":so .vimrc" -c":q"

