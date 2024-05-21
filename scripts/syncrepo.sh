echo "start syncing the repo"

pwd
mkdir sourcerepo
cd sourcerepo
pwd
echo "environment::" $Environment

echo "Clone source repo"

git clone https://$ADO_PAT@dev.azure.com/gokuldevops20/gokultest/_git/gokultest
cd gokultest
ls
git checkout dev

echo "Clone destination repo"
