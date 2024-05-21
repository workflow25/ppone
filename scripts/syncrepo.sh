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

cd /home/runner/work/ppone/ppone

pwd

echo "################## make destination repo##########################"

mkdir destinationrepo
pwd

cd destinationrepo
git clone https://$GH_TOKEN@github.com/workflow25/dummy12301.git
cd dummy12301
echo "##################destination repo files ##########################"
ls
git checkout dev

echo "##################Move to root folder ##########################"
cd /home/runner/work/ppone/ppone
ls



