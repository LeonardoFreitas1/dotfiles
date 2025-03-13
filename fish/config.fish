# ASDF configuration code
if test -z $ASDF_DATA_DIR
    set _asdf_shims "$HOME/.asdf/shims"
else
    set _asdf_shims "$ASDF_DATA_DIR/shims"
end

# Do not use fish_add_path (added in Fish 3.2) because it
# potentially changes the order of items in PATH
if not contains $_asdf_shims $PATH
    set -gx --prepend PATH $_asdf_shims
end
set --erase _asdf_shims

set -g PATH $HOME/.local/bin $PATH

set -g fish_greeting

zoxide init fish | source

starship init fish | source

# GJC
set -Ux MAVEN_ALL_REPO_URL 'https://nexus.gjccorp.com.br/repository/maven-all' 
set -Ux MAVEN_RELEASES_REPO_URL 'https://nexus.gjccorp/repository/maven-releases'
set -Ux MAVEN_SNAPSHOTS_REPO_URL 'https://nexus.gjccorp.com.br/repository/maven-snapshots'

alias kube-az 'az aks get-credentials --resource-group rg-aks-corp-prd-eus2 --name aks-corp-prd-eus2'
alias kube-qa 'kubectl config use-context k8s-cluster-qa'

fzf --fish | source

set KUBE_EDITOR '/usr/sbin/nvim'
