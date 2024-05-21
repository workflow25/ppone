echo "Install github migration tool"


gh extension install github/gh-ado2gh
gh extension upgrade github/gh-ado2gh


# === Migration started ===

echo "Repo migration started gokultest12301"
gh ado2gh migrate-repo --ado-org gokuldevops20 --ado-team-project gokultest --ado-repo gokultest --github-org  workflow25 --github-repo dummy12301
echo "Repo migration end gokultest12301"

# echo "Repo migration started gokultest12302"
# gh ado2gh migrate-repo --ado-org gokuldevops20 --ado-team-project gokultest --ado-repo gokultest --github-org  workflow25 --github-repo gokultest12302
# echo "Repo migration end gokultest12302"

# echo "Repo migration started gokultest12303"
# gh ado2gh migrate-repo --ado-org gokuldevops20 --ado-team-project gokultest --ado-repo gokultest --github-org  workflow25 --github-repo gokultest12303
# echo "Repo migration end gokultest12303"

# echo "Repo migration started gokultest12304"
# gh ado2gh migrate-repo --ado-org gokuldevops20 --ado-team-project gokultest --ado-repo gokultest --github-org  workflow25 --github-repo gokultest12304
# echo "Repo migration end gokultest12304"

# echo "Repo migration started gokultest12305"
# gh ado2gh migrate-repo --ado-org gokuldevops20 --ado-team-project gokultest --ado-repo gokultest --github-org  workflow25 --github-repo gokultest12305
# echo "Repo migration end gokultest12305"

# === Migration end ===


