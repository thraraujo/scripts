#!/usr/bin/env bash

# Git repositories
gitRepos=(
    $HOME/.config/dot-files/
    $HOME/.config/scripts/
    $HOME/Sync/projects/thraraujo.github.io
    $HOME/Sync/projects/cv-projects-documents/
    $HOME/Sync/projects/physics-math/
    $HOME/Sync/projects/wiki/
    $HOME/Sync/projects/work/research-reviews/
    $HOME/Sync/projects/work/pySymmPol/
    $HOME/Sync/projects/work/2d-qft/
    $HOME/Sync/projects/work/classical-integrablity/
    $HOME/Sync/projects/work/fisica-geral/
    $HOME/Sync/projects/work/gauge-integrability/
    $HOME/Sync/projects/work/high-energy-physics/
)

echo "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---"
for repo in "${gitRepos[@]}"
do
    test -n "$(git -C $repo status --porcelain)" && echo "   >> MODIFIED :: $repo" #|| echo "<< NOTHING :: $repo"
done
echo "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---"
