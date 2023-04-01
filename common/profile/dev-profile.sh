# Put system-wide settings in here. Aliases should go in .bashrc as they won't
# necessarily be available in all login shells, depending on the particular
# distribution.

# Set up a bash history file that will be shared between containers.
export HISTFILE="$DEV_COMMON/profile/.bash_history"
export HISTSIZE=100000
export HISTFILESIZE=20000000
export HISTCONTROL=erasedups:ignorespace

# Set up various preference and configuraiton files that will be shared between
# containers.
for file in .rspec .aprc .irbc .gitconfig .gitignore .irb-history; do
  ln --symbolic --force "$DEV_COMMON/profile/$file" "$HOME/$file"
done
