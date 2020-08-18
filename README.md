# Matthew's dotfiles

This repo uses `dotbot`. 

To install a profile, do the following:

```bash
cd bootstrap

./install-profile ubuntu
```

The installation mechanisms have been chosen to eliminate redundancy between
configurations across separate machines.

Common configurations are applied when needed, and diverging configuration are applied 
as needed.

The git configuration has been written to be intentionally non-destructive - Your global .gitconfig
will be preserved, and a new file providing further configuration is linked into ~/.config/dotfiles/git/config ,
and included by git using `git config --global include.path  ~/.config/dotfiles/git/config`

