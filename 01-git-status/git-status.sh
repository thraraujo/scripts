#!/usr/bin/env bash

# Git repositories
gitRepos=(
    $HOME/.config/dot-files/
    $HOME/.config/scripts/
    $HOME/Files/2025-work//wiki/
    $HOME/Files/2025-work/work/thraraujo.github.io
    $HOME/Files/2025-work/work/cv-projects-documents/
    $HOME/Files/2025-work/work/drafts/research-notebooks/
    $HOME/Files/2025-work/work/pySymmPol/
    $HOME/Files/2025-work/work/drafts/fisica-geral/
    $HOME/Files/2025-work/work/drafts/slavnov/
)

echo "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---"
for repo in "${gitRepos[@]}"
do
    test -n "$(git -C $repo status --porcelain)" && echo "   >> MODIFIED :: $repo" #|| echo "<< NOTHING :: $repo"
done
echo "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---"
