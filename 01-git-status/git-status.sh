#!/usr/bin/env bash

# Git repositories
gitRepos=(
    $HOME/.config/dot-files/
    $HOME/.config/scripts/
    $HOME/Sync/wiki/
    $HOME/Sync/work/thraraujo.github.io
    $HOME/Sync/work/cv-projects-documents/
    $HOME/Sync/work/drafts/research-notebooks/
    $HOME/Sync/work/pySymmPol/
    $HOME/Sync/work/drafts/fisica-geral/
    $HOME/Sync/work/drafts/slavnov/
)

echo "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---"
for repo in "${gitRepos[@]}"
do
    test -n "$(git -C $repo status --porcelain)" && echo "   >> MODIFIED :: $repo" #|| echo "<< NOTHING :: $repo"
done
echo "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---"
