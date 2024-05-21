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

echo "##################Clone destination repo##########################"

cd -
cd -
pwd
mkdir destinationrepo
pwd
cd destinationrepo
git clone https://$GH_TOKEN@github.com/workflow25/dummy12301.git
cd dummy12301
ls
git checkout dev
echo "##################Clone destination repo files ##########################"
ls
echo "##################Clone destination repo path##########################"
cd $OLDPWD
ls
pwd

echo "##################Move to root folder ##########################"
cd $OLDPWD
ls



