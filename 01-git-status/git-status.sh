#!/usr/bin/env bash

# Git repositories
gitRepos=(
    $HOME/.config/dot-files/
    $HOME/.config/scripts/
    $HOME/Documents/work/wiki/
    $HOME/Documents/work/projects/thraraujo.github.io
    $HOME/Documents/work/projects/cv-projects-documents/
    $HOME/Documents/work/projects/drafts/research-notebooks/
    $HOME/Documents/work/projects/pySymmPol/
    $HOME/Documents/work/projects/drafts/fisica-geral/
    $HOME/Documents/work/projects/drafts/slavnov/
)

echo "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---"
for repo in "${gitRepos[@]}"
do
    test -n "$(git -C $repo status --porcelain)" && echo "   >> MODIFIED :: $repo" #|| echo "<< NOTHING :: $repo"
done
echo "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---"
