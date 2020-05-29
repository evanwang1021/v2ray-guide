
#!/bin/bash

npm install gitbook-cli -g
gitbook init
gitbook install
gitbook build

cd _book
rm .travis.yml deploy.sh .gitignore
git init
git config user.name "EvanWang"
git config user.email "evan.wang.coding@gmail.com"
git remote add upstream "https://${GH_TOKEN}@github.com/10211509/myquant.github.io"

git checkout -b master
git add -A
git commit -m 'update'
git push upstream master -f
