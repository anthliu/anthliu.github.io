# Temporarily store uncommited changes
git stash

# Verify correct branch
git checkout dev

# Build new files
stack exec myblog clean
stack exec myblog build

# Get previous files
git checkout master

# Overwrite existing files with new files
rsync -a --filter='P _site/'      \
         --filter='P _cache/'     \
         --filter='P .git/'       \
         --filter='P .gitignore'  \
         --filter='P .stack-work' \
         --delete-excluded        \
         _site/ .

# Commit
git add -A
git commit -m "Publish."

# Push
git push origin master:master

# Restoration
git checkout dev
git stash pop
