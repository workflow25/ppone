echo "start syncing the repo"

pwd
mkdir sourcerepo
cd sourcerepo
pwd
echo "environment::" $Environment
echo "ado pat $ADO_PAT"
git clone https://$ADO_PAT@dev.azure.com/gokuldevops20/gokultest/_git/gokultest
cd gokultest
ls
