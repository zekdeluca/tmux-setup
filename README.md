# TMUX Setup

Personal tmux setup sample. Meant to allow quick tmux configuration on different machines.

## Replicating the repository on a machine
- Clone the repository:

```
   git clone https://github.com/username/reponame.git
```

- Symlink `.tmux.conf`:

```
   ln -sf <repo-complete-path>/repo-name/.tmux.conf <home-complete-path>/.tmux.conf (make sure to use fully qualified path to avoid issues with the symlink)
```

## Layouts

The layouts in this repo can be used simply by executing the script for your favorite layout 
which will create the tmux session with the appropriate windows and panes, they can be 
symlinked to your home folder for ease of use.
