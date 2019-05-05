echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Build the project. if using a theme, replace with `hugo -t <YOURTHEME>`
hugo -b https://kuruhuru.github.io/

# Go To Public folder
cd public
# Add changes to git.
git add .

# Commit changes.
git commit -m "Rebuilding site"

# Push source and build repos.
git push origin master

# Come Back up to the Project Root
cd ..