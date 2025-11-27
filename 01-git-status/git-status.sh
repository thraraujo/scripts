#!/usr/bin/env bash

# Git repositories
gitRepos=(
    $HOME/.config/dot-files/
    $HOME/.config/scripts/
    $HOME/Documents/wiki/
    $HOME/Documents/projects/thraraujo.github.io
    $HOME/Documents/projects/cv-projects-documents/
    $HOME/Documents/projects/drafts/research-notebooks/
    $HOME/Documents/projects/pySymmPol/
    $HOME/Documents/projects/drafts/fisica-geral/
    $HOME/Documents/projects/drafts/slavnov/
)

echo "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---"
for repo in "${gitRepos[@]}"
do
    test -n "$(git -C $repo status --porcelain)" && echo "   >> MODIFIED :: $repo" #|| echo "<< NOTHING :: $repo"
done
echo "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---"
