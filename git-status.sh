#!/usr/bin/env bash

# Git repositories
gitRepos=(
    $HOME/.config/dot-files/
    $HOME/.config/scripts/
    $HOME/Work-repos/wiki/
    $HOME/Work-repos/open-research-library/
    $HOME/Work-repos/thraraujo.github.io
    $HOME/Work-repos/pysymmpol/
    $HOME/Work-repos/cv-projects-documents/
    $HOME/Work-repos/writing/
    $HOME/Work-repos/slavnov/
)

echo "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---"
for repo in "${gitRepos[@]}"
do
    test -n "$(git -C $repo status --porcelain)" && echo "   >> MODIFIED :: $repo" #|| echo "<< NOTHING :: $repo"
done
echo "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---"
