(A) Create two branches, both from your master branch, with names test1 and test2.

```bash
$ git branch test1
```
```bash
$ git branch test2
```

(B) Now checkout the test1 branch and create a new text file named test.txt in the homework/1/ directory of this branch.
```bash
$ git checkout test1
Switched to branch 'test1'
$ touch test.txt
```



(C) Inside test.txt in test1 branch write this message: This is some example text for branch test1, and save it.
```bash
$ vim test.txt
```




(D) Now stage and commit test.txt file to branch test1.
```bash
$ git add -A
warning: LF will be replaced by CRLF in test.txt.
The file will have its original line endings in your working directory.
$ git commit -am "added test flile"
[test1 8d64969] added test flile
 1 file changed, 1 insertion(+)
 create mode 100644 test.txt
```




(E) Checkout the branch test2. Do you still see test.txt that you just created in your homework/1/ directory? You can search for it by the bash command ls. Explain why you see/don’t see the file in your working directory anymore.
```bash
$ git checkout test2
Switched to branch 'test2'
$ ls
exam/  homework/  images/  quiz/  README.md  test.cs
```
test.txt was created in a different branch. In this branch, it was never created.




(F) Create a new text file named test.txt in the homework/1/ directory of this branch as well, and add This is some example text for branch test2 to its content.
```bash
$ touch test.txt
$ notepad test.txt
```




(G) Now try to checkout test1. What error/warning message do you get? Fix the source of error and then checkout test1 branch.
```bash
$ git checkout test1
error: The following untracked working tree files would be overwritten by checkout:
        test.txt
Please move or remove them before you switch branches.
Aborting
$ git add -A
$ git commit -am "added stuff to test2"
[test2 a133803] added stuff to test2
 1 file changed, 1 insertion(+)
 create mode 100644 test.txt
$ git checkout test1
Switched to branch 'test1'
```




(H) Now merge the content of test1 with master branch. (Hint: Note from which branch you doing this merge!)
```bash
$ git checkout master
Switched to branch 'master'
Your branch is up-to-date with 'origin/master'.
$ git merge test1
Updating a2eb595..8d64969
Fast-forward
 test.txt | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 test.txt
```




(I) Now what do you see as the content of master branch? (Hint: Use ls bash command, to list the files in the working directory.)
```bash
$ ls
exam/  homework/  images/  quiz/  README.md  test.cs  test.txt
```




(J) Now merge the content of test2 with master branch. What error/warning message do you get? Why does this error arise?
```bash
$ git merge test2
Auto-merging test.txt
CONFLICT (add/add): Merge conflict in test.txt
Automatic merge failed; fix conflicts and then commit the result.
```




(K) Now chekcout test2. What error/warning message do you get?
```bash
$ git checkout test2
error: you need to resolve your current index first
test.txt: needs merge
```




(L) Run the Git command git status. Why does such a conflict exist, as mentioned in git status output?
```bash
$ git status
On branch master
Your branch is ahead of 'origin/master' by 1 commit.
  (use "git push" to publish your local commits)

You have unmerged paths.
  (fix conflicts and run "git commit")
  (use "git merge --abort" to abort the merge)

Unmerged paths:
  (use "git add <file>..." to mark resolution)

        both added:      test.txt

no changes added to commit (use "git add" and/or "git commit -a")
```
The conflict is that both master and test2 have different test.txt files with different text on the same line, so they can not be safely merged.

(M) At this stage, you have two options: Either 1. stage and commit the combined conlifting test.txt file to Git repository (but this is not recommended), or, 2. open the file test.txt using vim editor on the command line and reslve the conflict by editing the content of the file to only this sentence: . Then save and quit *vim.
```bash
$ notepad test.txt
```




(N) Now, run git status, then stage and commit your conflict-resolved file. Then checkout test2 branch.
```bash
$ git status
On branch master
Your branch is ahead of 'origin/master' by 1 commit.
  (use "git push" to publish your local commits)

You have unmerged paths.
  (fix conflicts and run "git commit")
  (use "git merge --abort" to abort the merge)

Unmerged paths:
  (use "git add <file>..." to mark resolution)

        both added:      test.txt

no changes added to commit (use "git add" and/or "git commit -a")
$ git add -A
warning: LF will be replaced by CRLF in test.txt.
The file will have its original line endings in your working directory.
$ git status
On branch master
Your branch is ahead of 'origin/master' by 1 commit.
  (use "git push" to publish your local commits)

All conflicts fixed but you are still merging.
  (use "git commit" to conclude merge)

Changes to be committed:

        modified:   test.txt
$ git commit -am "merged, kinda, not really"
[master dc39829] merged, kinda, not really
$ git checkout test2
Switched to branch 'test2'
```




(O) Now, try deleting branch test1, while on branch test2. What error/warning message do you get?
```bash
$ git branch -d test1
error: The branch 'test1' is not fully merged.
If you are sure you want to delete it, run 'git branch -D test1'.
```




(P) Now, switch back to master branch. Now, try deleting branch test1, while on master branch. What message do you get from Git? List all the existing branches using git branch command.
```bash
$ git branch -d test1
Deleted branch test1 (was 8d64969).
$ git branch
  create
* master
  test2
```




(Q) Why is there such a difference in Git messages between when you tried deleting test1 branch from test2 branch, and when you tried deleting test1 branch from master branch?

Because test1 was split off from master, meaning that cutting it back from there is no problem, whereas trying to delete it from test 2 is reaching across to cut something off, which could cause real issues.



(R) Now checkout test2 branch. While on test2, try to delete branch test2. What error/message do you get?
```bash
$ git checkout test2
Switched to branch 'test2'
$ git branch -d test2
error: Cannot delete branch 'test2' checked out at 'C:/Users/Henry/git/ICP2017F'
```




(S) Switch back to master and delete test2 branch. List all your project branches by the appropriate Git command.
```bash
$ git checkout master
Switched to branch 'master'
Your branch is ahead of 'origin/master' by 3 commits.
  (use "git push" to publish your local commits)
$ git branch -d test2
Deleted branch test2 (was a133803).
```




(T) Stage and commit all the changes (including the file test.txt) to your project’s master branch. Now push it all to the remote repository by Wednesday Feb 15 2017, 9:00 a.m. CDT.
```bash
$ git add -A
$ git commit -am "final commit in HW 1"
On branch master
Your branch is ahead of 'origin/master' by 3 commits.
  (use "git push" to publish your local commits)

nothing to commit, working tree clean
$ git push
Counting objects: 9, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (6/6), done.
Writing objects: 100% (9/9), 750 bytes | 250.00 KiB/s, done.
Total 9 (delta 4), reused 0 (delta 0)
remote: Resolving deltas: 100% (4/4), completed with 1 local object.
To github.com:henry-arjet/ICP2017F.git
   a2eb595..dc39829  master -> master
```


