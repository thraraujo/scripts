#!/usr/bin/env bash

# Git repositories
gitRepos=(
    $HOME/.config/dot-files/
    $HOME/.config/scripts/
    $HOME/Work-repos/wiki/
    $HOME/Work-repos/thraraujo.github.io
    $HOME/Work-repos/pysymmpol/
    $HOME/Work-repos/cv-projects-documents/
    $HOME/Work-repos/papers/research-notebooks/
    $HOME/Work-repos/papers/slavnov/
    $HOME/Work-repos/papers/fermion-boson/
)

echo "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---"
for repo in "${gitRepos[@]}"
do
    test -n "$(git -C $repo status --porcelain)" && echo "   >> MODIFIED :: $repo" #|| echo "<< NOTHING :: $repo"
done
echo "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---"
