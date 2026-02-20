

## Task 2: Branching Commands — Hands-On

```bash
# 1. List all branches
git branch

# 2. Create a new branch called feature-1
git branch feature-1

# 3. Switch to feature-1
git switch feature-1

# 4. Create and switch to feature-2 in one command
git switch -c feature-2

# 5. Switch back to main
git switch main

# 6. Make a commit on feature-1 (example)
git switch feature-1
echo "Feature 1 work" >> feature1.txt
git add feature1.txt
git commit -m "Add feature-1 file"

# 7. Switch back to main — commit from feature-1 is not there
git switch main
ls  # feature1.txt does not exist here

# 8. Delete a branch no longer needed
git branch -d feature-2

# 9. Add all branching commands to git-commands.md
# (update your file accordingly)
```
![alt text](image.png)
**Note:** `git switch` is the modern alternative to `git checkout` for switching branches. `git checkout` can also be used for creating new branches, but `git switch -c <branch>` is simpler and less error-prone.

---

## Task 3: Push to GitHub

```bash
# 1. Create a new repo on GitHub (no README)
# 2. Connect local repo to GitHub
git remote add origin https://github.com/<your-username>/devops-git-practice.git

# 3. Push main branch
git push -u origin main

# 4. Push feature-1 branch
git push -u origin feature-1

# 5. Verify both branches on GitHub
# Go to GitHub > branches tab

# Notes:
# Difference between origin and upstream
# - `origin` is your fork or primary remote repository.
# - `upstream` usually refers to the original repository you forked from.
```

---

## Task 4: Pull from GitHub

```bash
# 1. Make a change directly on GitHub
# 2. Pull the change locally
git pull origin main
```
![alt text](image-1.png)
**Difference between `git fetch` and `git pull`:**

* `git fetch` downloads commits and updates remote-tracking branches but does not modify your working directory.
* `git pull` = `git fetch` + `git merge` (updates your current branch with remote changes).

---

## Task 5: Clone vs Fork

1. **Clone any public repo locally**

```bash
git clone https://github.com/<user>/<repo>.git
```

2. **Fork on GitHub, then clone fork**

```bash
git clone https://github.com/<your-username>/<repo>.git
```

**Notes:**

* **Difference between clone and fork:**

  * Clone: copies a repository locally.
  * Fork: creates your own copy of a repo on GitHub for making changes independently.
* **When to clone vs fork:**

  * Clone: if you just want a local copy for personal use or contributing via PR.
  * Fork: if you want your own remote copy to experiment or contribute.
* **Keeping fork in sync with original:**

```bash
git remote add upstream https://github.com/<original-owner>/<repo>.git
git fetch upstream
git merge upstream/main
```

---

