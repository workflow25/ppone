echo "Install github migration tool"

export GH_PAT="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"
export ADO_PAT="oyn3t63awagzl7qyqps3e2l4btimf45rfx2hwuvmsoo3z5tnmfuq"

# === Migration started ===

gh ado2gh migrate-repo --ado-org gokuldevops20 --ado-team-project gokultest --ado-repo gokultest --github-org  workflow25 --github-repo gokultest123

# === Migration end ===


