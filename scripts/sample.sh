echo "Install github migration tool"

echo "FOO_ROOT: $GH_TOKEN"
echo "FOO_ROOT: $GH_TOKEN2"

gh extension install github/gh-ado2gh
gh extension upgrade github/gh-ado2gh


# === Migration started ===

gh ado2gh migrate-repo --ado-org gokuldevops20 --ado-team-project gokultest --ado-repo gokultest --github-org  workflow25 --github-repo gokultest123

# === Migration end ===


