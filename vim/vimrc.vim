" My runtimes (lua files mostly)
set runtimepath+=~/BASH/vim/my_runtime

" MY VIM CONFIGS
source $HOME/BASH/vim/settings.vim
source $HOME/BASH/vim/keymaps.vim

""""""" Plugins """""""""
" Using vim-plug:
" https://github.com/junegunn/vim-plug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

" Specify a directory for plugins
call plug#begin('~/BASH/vim/plugins/plugged')
  source $HOME/BASH/vim/plugins.vim
  if has('nvim')
    source $HOME/BASH/vim/plugins.nvim
  endif
" Initialize plugin system
call plug#end()

" Plugin settings
if exists("g:using_plugin_vim_lsp") && g:using_plugin_vim_lsp
  source $HOME/BASH/vim/lsp_settings.vim
endif
if exists("g:using_nvimlsp_and_nvimcmp") && g:using_nvimlsp_and_nvimcmp && has('nvim')
  luafile $HOME/BASH/vim/nvimlsp_settings.lua
  luafile $HOME/BASH/vim/nvimcmp_settings.lua
endif
if has('nvim')
  luafile $HOME/BASH/vim/plugin_settings.lua
endif

" Functions
source $HOME/BASH/vim/shared_functions.vim
source $HOME/BASH/vim/quick_fix_tools.vim
source $HOME/BASH/vim/toggle_case.vim
source $HOME/BASH/vim/commentyankpaste.vim
source $HOME/BASH/vim/impl_header.vim
source $HOME/BASH/vim/autoignorecleanswaps.vim
source $HOME/BASH/vim/showkeymaps.vim
source $HOME/BASH/vim/autoimport.vim
source $HOME/BASH/vim/namevar.vim
source $HOME/BASH/vim/yanknote.vim
source $HOME/BASH/vim/send_to_tmux_and_clipboard.vim

" NVIM specific
if has('nvim')
  source $HOME/BASH/vim/settings.nvim
endif

