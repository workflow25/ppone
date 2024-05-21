echo "start syncing the repo"

pwd
mkdir sourcerepo
cd sourcerepo
pwd
echo "ado pat ${{vars.ADO_PAT}}"
git clone https://${{vars.ADO_PAT}}@dev.azure.com/gokuldevops20/gokultest/_git/gokultest
cd gokultest
ls
