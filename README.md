# Matthew's :zap: bootstrappable dotrepo

## TODO:

- [] `diff-so-fancy` -> `delta`
     - Delta is nicer to config / use IMO
- [] `bash` -> `fish` migration

## Features

- Uses [dotbot](https://github.com/anishathalye/dotbot) for bootstrapping installation
- Breaks configuration for each program/component into standalone configs
  - Uses profiles to specify which configs will be installed. 
  - This enables reuse of common configs, while still supporting diverse envs/hosts
  - Inspired/based off of:
    - [vsund/dotfiles](https://github.com/vsund/dotfiles) for original 'meta' folder implementation
    - [This guide for more information on usage](https://github.com/anishathalye/dotbot/wiki/Tips-and-Tricks#more-advanced-setup)
- Provides:
  - non-destructive configuration + aliases for `git`
  - pretty, usable `.tmux` config, supporting tmux >=3
  - SpaceVim config & bootstrap 
    - Fluid navigation between vim splits & tmux panes
  - fzf support built-in to profiles
  - Bootstrap of various z jumpers, `zoxide`, `z.lua`
    Fallover support for various implementations of z jumper, 
      - From fastest/less portable (zoxide), to slowest/most portable
      - try `zoxide`->`z.lua`
- Profile specific startup scripts can be added ad-infinitum
  using `run.d`, for flexible additions on host-specific basis.
  - `.profile` sources `~/.config/dotfiles/run.d/*` 
  - Eg: For my HPC host:
    - `module_rc` & `hpc_aliases` are symlinked into `run.d`
    - At start of bash sessions:
      - all of my environment modules are loaded
      - My most useful aliases for job submission, & other HPC
        tasks are defined.
- Support for X11 clipboard sharing in:
  - vim, tmux, visidata

## Demo

![demo](demo.x3.gif)

## Usage

To install a profile, do the following:

```bash
cd bootstrap

./install-profile ubuntu
```

## Details

The installation mechanisms have been chosen to eliminate redundancy between
configurations across separate machines.

Common configurations are applied when needed, and diverging configuration are applied 
as needed.

The git configuration has been written to be intentionally non-destructive - Your global .gitconfig
will be preserved, and a new file providing further configuration is linked into ~/.config/dotfiles/git/config ,
and included by git using `git config --global include.path  ~/.config/dotfiles/git/config`

My personal dotfile submodules for this repo have been [tagged with the github topic dotbot and can be found here](https://github.com/search?q=user%3Amstr3336+topic%3Adotbot&type=Repositories). 

`bootstrap/install-profile` automatically recursively fetches submodules, don't be alarmed.
