personal-dot-vim
=============

My personal ViM preferences.

Installation
------------

1. On your home directory, clone personal-dot-vim into the `.vim` directory

```
git clone git@github.com:personal/rjmco-dot-vim.git ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

1. Create a `~/.vimrc` with the following content:

```
execute personal#load_personal_settings()
```

1. Install `python3` & `pip3`.

1. Install `pynvim` since `deoplete.vim` depends on it.

```
pip3 install --user pynvim
```

1. On ViM, install the Plugins with:

```
:PluginInstall
```

Modifications
-------------

To further configure ViM, modify the `personal#load_personal_settings()` function on the `.vim/autoload/personal.vim` as if you were modifying the `.vimrc` file. This allows for the configuration changes to be version controlled.

License
-------

This is free and unencumbered public domain software. For more information, see https://unlicense.org/ or the accompanying `LICENSE` file.
