echo "Install github migration tool"

export GH_TOKEN="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"   
export GH_PAT="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"
export ADO_PAT="oyn3t63awagzl7qyqps3e2l4btimf45rfx2hwuvmsoo3z5tnmfuq"

gh extension install github/gh-ado2gh
gh extension upgrade github/gh-ado2gh


# === Migration started ===

gh ado2gh migrate-repo --ado-org gokuldevops20 --ado-team-project gokultest --ado-repo gokultest --github-org  workflow25 --github-repo gokultest123

# === Migration end ===


