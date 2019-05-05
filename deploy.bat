echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

rem Build the project. if using a theme, replace with `hugo -t <YOURTHEME>`
hugo -b https://kuruhuru.github.io/

rem Go To Public folder
cd public
rem Add changes to git.
git add .

rem Commit changes.
git commit -m "Rebuilding site"

rem Push source and build repos.
git push origin master

rem Come Back up to the Project Root
cd ..