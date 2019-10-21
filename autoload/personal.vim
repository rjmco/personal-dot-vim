" personal.vim - Ricardo's personal ViM configuration

function! personal#load_settings(...) abort
  """ START Vundle Configuration

  " Disable Vi compatibility
  set nocompatible

  " Disable file type for Vundle (required)
  filetype off

  " Add Vundle to the runtime path
  set rtp+=~/.vim/bundle/Vundle.vim

  " Initialize Vundle
  call vundle#begin()

  " let Vundle manage Vundle (required)
  Plugin 'VundleVim/Vundle.vim'

  " Load Vundle Plugins below this line
  
  " Utility addons
  Plugin 'roxma/nvim-yarp' " required by deoplete.vim
  Plugin 'roxma/vim-hug-neovim-rpc' " required by deoplete.vim
  Plugin 'Shougo/deoplete.nvim' " autocompletion
  Plugin 'townk/vim-autoclose'
  Plugin 'ervandew/supertab'

  " Language syntax highlighting & completion
  Plugin 'hashivim/vim-terraform' " Required by vim-terraform-completion
  Plugin 'vim-syntastic/syntastic' " Required by vim-terraform-completion
  Plugin 'neomake/neomake'
  Plugin 'majutsushi/tagbar'
  Plugin 'juliosueiras/vim-terraform-completion' " Terrafom


  " None loaded at this moment 

  " All of your Plugins must be added before the following line
  call vundle#end()            " required
  filetype plugin indent on    " required

  """ START Plugin specific configurations

  " deoplete.vim
  "let g:acp_enableAtStartup = 0
  let g:deoplete#enable_at_startup = 1
  let g:deoplete#enable_smart_case = 1
  let g:deoplete#sources#syntax#min_keyword_length = 3

  " Vim-Supertab Configuration
  let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

  " Syntastic Config
  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*

  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_auto_loc_list = 1
  let g:syntastic_check_on_open = 1
  let g:syntastic_check_on_wq = 0

  " vim-terraform
  " align settings automatically with Tabularize
  let g:terraform_align=1
  "automatically fold sections of terraform code
  let g:terraform_fold_sections=1
  " automatically format *.tf and *.tfvars with `terraform fmt` on save
  let g:terraform_fmt_on_save=1

  let g:deoplete#omni_patterns = {}
  let g:deoplete#omni_patterns.terraform = '[^ *\t"{=$]\w*'
  let g:deoplete#enable_at_startup = 1
  call deoplete#initialize()

  set omnifunc=syntaxcomplete#Complete

  """ START Ricardo's personal settings

  " Enable Syntax highlighting
  syntax on

  " Do not wrap long lines
  set nowrap

  " Default encoding to UTF-8
  set encoding=utf8

  " DISABLED FEATURES
  "set ruler

  " add yaml stuffs
  "au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml
  "autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

  " add jsonnet stuffs
  "au! BufNewFile,BufReadPost *.jsonnet set filetype=jsonnet foldmethod=syntax
  "autocmd FileType jsonnet setlocal ts=2 sts=2 sw=2 expandtab

endfunction
