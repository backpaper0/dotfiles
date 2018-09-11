# dotfiles for windows

## Install

1. Clone this repository to local.

   ```console
   git clone git@github.com:backpaper0/dotfiles.git "%USERPROFILE%\dotfiles"
   ```

2. Create `~/_vimrc` with the following contents:

   ```vim
   source ~/dotfiles/master.vim
   ```

3. Create `_gvimrc` with the following contents:

   ```vim
   source ~/dotfiles/gvim.vim
   ```
