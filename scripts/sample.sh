echo "Install github migration tool"
echo "${{ secrets.GITHUB_TOKEN }}"
export GH_TOKEN="${{ secrets.GITHUB_TOKEN }}" 
export GH_PAT="${{ secrets.GITHUB_TOKEN }}"
export ADO_PAT="oyn3t63awagzl7qyqps3e2l4btimf45rfx2hwuvmsoo3z5tnmfuq"

gh extension install github/gh-ado2gh
gh extension upgrade github/gh-ado2gh


# === Migration started ===

gh ado2gh migrate-repo --ado-org gokuldevops20 --ado-team-project gokultest --ado-repo gokultest --github-org  workflow25 --github-repo gokultest123

# === Migration end ===


