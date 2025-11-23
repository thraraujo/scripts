#!/usr/bin/env bash

# Git repositories
gitRepos=(
    $HOME/.config/dot-files/
    $HOME/.config/scripts/
    $HOME/Documents/work/wiki/
    $HOME/Documents/work/work/thraraujo.github.io
    $HOME/Documents/work/work/cv-projects-documents/
    $HOME/Documents/work/work/drafts/research-notebooks/
    $HOME/Documents/work/work/pySymmPol/
    $HOME/Documents/work/work/drafts/fisica-geral/
    $HOME/Documents/work/work/drafts/slavnov/
)

echo "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---"
for repo in "${gitRepos[@]}"
do
    test -n "$(git -C $repo status --porcelain)" && echo "   >> MODIFIED :: $repo" #|| echo "<< NOTHING :: $repo"
done
echo "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---"
