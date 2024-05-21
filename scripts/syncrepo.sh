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

echo "##################Clone destination repo##########################"

cd /home/runner/work/ppone/ppone/reposync
ls

echo "################## make destination repo##########################"
mkdir destinationrepo
cd destinationrepo
pwd
ls

git clone https://$GH_TOKEN@github.com/workflow25/dummy12301.git
cd dummy12301
echo "##################destination repo files ##########################"
pwd
ls
git checkout dev
ls

echo "##################Move to root folder ##########################"
cd /home/runner/work/ppone/ppone/reposync
pwd
ls

cp -r sourcerepo/gokultest/* destinationrepo/dummy12301

cd /home/runner/work/ppone/ppone/reposync/destinationrepo/dummy12301
ls
