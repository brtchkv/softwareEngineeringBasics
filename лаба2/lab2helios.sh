   #!/bin/bash
   {
   cd "/home/s263916/OPI"
   rm -rf /home/s263916/OPI/execution
   mkdir execution
   cd execution

   git init 
   git status
   echo ".DS_Store" > .gitignore
   git add .gitignore

   #  commit 0
   git config --local user.name "Boba"; git config --local user.email "boba@gmail.com"
   yes | cp -rf ../commits/commit0/* ./
   git add -A
   git commit -m r0
   #  commit 1
   git checkout -b r1
   yes | cp -rf ../commits/commit1/* ./
   git add -A
   git commit -m r1
   #  commit 2
   git config --local user.name 'Biba'; git config --local user.email 'biba@gmail.com'
   git checkout -b r2
   yes | cp -rf ../commits/commit2/* ./
   git add -A
   git commit -m r2
   #  commit 3
   yes | cp -rf ../commits/commit3/* ./
   git add -A
   git commit -m r3
   #  commit 4
   git config --local user.name "Boba"; git config --local user.email "boba@gmail.com"
   git checkout master
   yes | cp -rf ../commits/commit4/* ./
   git add -A
   git commit -m r4
   #  commit 5
   git checkout r1
   yes | cp -rf ../commits/commit5/* ./
   git add -A
   git commit -m r5
   #  commit 6
   git checkout r1
   yes | cp -rf ../commits/commit6/* ./
   git add -A
   git commit -m r6
   #  commit 7
   git config --local user.name 'Biba'; git config --local user.email 'biba@gmail.com'
   git checkout r2
   yes | cp -rf ../commits/commit7/* ./
   git add -A
   git commit -m r7
   #  commit 8
   git config --local user.name "Boba"; git config --local user.email "boba@gmail.com"
   git checkout master
   yes | cp -rf ../commits/commit8/* ./
   git add -A
   git commit -m r8
   #  commit 9
   git config --local user.name 'Biba'; git config --local user.email 'biba@gmail.com'
   git checkout r2
   yes | cp -rf ../commits/commit9/* ./
   git add -A
   git commit -m r9
   #  commit 10
   yes | cp -rf ../commits/commit10/* ./
   git add -A
   git commit -m r10
   #  commit 11
   yes | cp -rf ../commits/commit11/* ./
   git add -A
   git commit -m r11
   #  commit 12
   git config --local user.name "Boba"; git config --local user.email "boba@gmail.com"
   git checkout r1
   yes | cp -rf ../commits/commit12/* ./
   git add -A
   git commit -m r12
   #  commit 13
   git config --local user.name 'Biba'; git config --local user.email 'biba@gmail.com'
   git checkout r2
   git merge --no-ff r1
   cp -rf ../commits/commit13/* ./
   git checkout --ours -- *
   git checkout --ours -- J.java
   git checkout --ours -- I.java
   git add -A
   git commit -m r13
   #  commit 14
   git config --local user.name "Boba"; git config --local user.email "boba@gmail.com"
   git checkout master
   git merge --no-ff r2
   rm -f "*"
   rm -f "ABNQBatpyO.0W1"
   cp -rf ../commits/commit14/* ./
   git checkout --ours -- ./*
   git add -A
   git commit -m r14

   rm -f .gitignore
	} &> log.txt
   git log --all --decorate --oneline --graph

