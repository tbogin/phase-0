
    ## Tracking Changes Reflection
1. How does tracking and adding changes make developers' lives easier?
  By showing version control for changes made to files by multiple people.

2. What is a commit?
  A save point for a file within a branch repository.

3. What are the best practices for commit messages?
  Framing your commit message as a command, such as "Make changes"

4. What does the HEAD^ argument mean?
  HEAD^ is the last commit you made before the commit you are currently on.

5. What are the 3 stages of a git change and how do you move a file from one stage to the other?
  Check out a branch from master. Add and commit changes. Push changes to origin. Files are moved between stages with git commands.

6. Write a handy cheatsheet of the commands you need to commit your changes.
  ```
  git checkout -b <branchname>
  git status
  git add <filename>
  git commit -m
  git checkout master
  git pull origin master
  git checkout <branchname>
  git merge master
  git push origin <branchname>
  git branch -d <branchname>
  ```

7. What is a pull request and how do you create and merge one?
   Why are pull requests preferred when working with teams?
  A pull request is a request to merge changes you made to your branch into the master branch. You create a pull request by pushing your local changes to GitHub, click 'Compare & pull request' and follow the next steps for updating the repo description, creating pull and merge requests, and deleting the now-extraneous feature branch on both GitHub and the terminal.