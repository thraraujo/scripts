#!/usr/bin/env bash

# Git repositories
gitRepos=(
    $HOME/.config/dot-files/
    $HOME/.config/scripts/
    $HOME/Sync/wiki/
    $HOME/Sync/work/thraraujo.github.io
    $HOME/Sync/work/cv-projects-documents/
    $HOME/Sync/work/physics-math/
    $HOME/Sync/work/drafts/research-reviews/
    $HOME/Sync/work/drafts/pySymmPol/
    $HOME/Sync/work/drafts/fisica-geral/
    $HOME/Sync/work/drafts/high-energy-physics/
)

echo "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---"
for repo in "${gitRepos[@]}"
do
    test -n "$(git -C $repo status --porcelain)" && echo "   >> MODIFIED :: $repo" #|| echo "<< NOTHING :: $repo"
done
echo "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---"
