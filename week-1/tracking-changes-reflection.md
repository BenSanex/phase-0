How does tracking and adding changes make developers' lives easier?
Tracking and adding changes helps developers reduce and track down mistakes.  It also makes it easier to collaborate because everbody can see what other people are working on so you don't overwrite or duplicate work.

What is a commit?
A commit is simply a checkpoint that you can roll back to if needed.

What are the best practices for commit messages?
Make sure you explain yourself so other people can understand it.  Be specific about what you did, and write the in the present tense.

What does the HEAD^ argument mean?
The head argument lets to view and work with previous commits. HEAD^ specifically is the last commit.

What are the 3 stages of a git change and how do you move a file from one stage to the other?
The three stages are:
1. Untracked/modified, which you move the the next by using git add.
2. Staged, which means the changes are ready to be committed using git commit 
3. Committed, which means the file is saved, and moves back to untracked or modified when you make changes.

Write a handy cheatsheet of the commands you need to commit your changes.
git pull origin master
git checkout -b new_branch
git add .
git commit
git push origin new_branch
git status
git log

What is a pull request and how do you create and merge one?
A pull request lets you merge different branches together.  You can creat a pull request and merge using the pull request button on github and that allows you to select which branches you are merging together.

Why are pull requests preferred when working with teams?
Pull requests make it easier so people can't make changes the are unexpected by the rest of the team and reduces errors. 