echo "start syncing the repo"

pwd
mkdir reposync
cd reposync
pwd

mkdir sourcerepo
cd sourcerepo
pwd
echo "environment::" $Environment

echo "Clone source repo"

git clone https://$ADO_PAT@dev.azure.com/gokuldevops20/gokultest/_git/gokultest
cd gokultest
pwd
ls
git checkout dev
ls
git push --prune h https://$GH_TOKEN@github.com/workflow25/dummy12301.git +refs/remotes/origin/*:refs/heads/* +refs/tags/*:refs/tags/*
