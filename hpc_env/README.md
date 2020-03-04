# HPC User Profile Stuff

This directory aims to provide an environment for user profiles
on the HPC.

Certain terminal programs that were either old, or missing
have been compiled from source and installed to the home directory.

This includes Vim (Updated to version 8), and tmux (missing).

I also tried to install mosh, and it worked, but then I quickly
realized that UDP was blocked on the servers, so that was a no-go.

I might use mosh on a home server if I ever set up an ssh server at home.

I'm also planning on updating diffutils, since its just nice to see colored diffs

To set the contents of this up, you will want to symlink `~/.bashrc` to this `.bashrc`,
and so on.

Also symlink `~/usr` to this `./usr`.
