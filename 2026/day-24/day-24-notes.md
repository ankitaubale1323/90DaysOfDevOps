

# Day 24 – Advanced Git: Merge, Rebase, Stash & Cherry Pick

## Task 1: Git Merge — Observations

* **Fast-Forward Merge:**
  Occurs when the branch being merged has all commits ahead of the current branch without any divergence. Git simply moves the branch pointer forward.
  Example: `main` ➔ `feature-login` merge (no other commits in `main`) → fast-forward merge.

* **Merge Commit:**
  Happens when both branches have diverged. Git creates a new commit to combine changes.
  Example: `main` received a commit while `feature-signup` was in progress → merging `feature-signup` created a merge commit.

* **Merge Conflict:**
  Happens when the same line in the same file was changed in both branches. Git cannot automatically merge and requires manual resolution.
  Steps to resolve:

  1. Edit the file to keep desired changes
  2. `git add <file>`
  3. `git commit`

---

## Task 2: Git Rebase — Observations

* **What Rebase Does:**
  Moves the entire branch to start from the tip of another branch (usually `main`), replaying commits one by one.

* **History Comparison:**

  * Merge → preserves history as a graph, showing true branch structure.
  * Rebase → linear history; looks like all work was done sequentially on top of `main`.

* **Caution:**
  Never rebase commits that have been shared/pushed to remote. It rewrites commit hashes, causing problems for others.

* **When to Use:**

  * Rebase → to keep history clean and linear (feature branches, before merging to `main`).
  * Merge → when you want to preserve branch history or for long-lived branches.

---

## Task 3: Squash Commit vs Merge Commit

* **Squash Merge (`--squash`):**
  Combines multiple commits from a branch into a single commit on the target branch. Useful for cleaning up small/fixup commits.

* **Regular Merge:**
  Preserves individual commits in history; shows full timeline of feature development.

* **Trade-Off:**

  * Squash → cleaner history, but you lose individual commit context.
  * Merge → complete history, but can get messy with many small commits.

---

## Task 4: Git Stash — Observations

* **Use Case:**
  Temporarily save work-in-progress without committing, allowing branch switch.

* **`git stash pop` vs `git stash apply`:**

  * `pop` → applies the stash and removes it from the stash list
  * `apply` → applies the stash but keeps it in the list

* **Practical Example:**
  Stash multiple changes:

  ```
  git stash push -m "work-in-progress login feature"
  git stash list
  git stash apply stash@{0}
  git stash pop
  ```

---

## Task 5: Cherry Picking — Observations

* **Cherry-Pick:**
  Apply a specific commit from one branch to another.

* **Use Cases:**

  * Hotfixes applied selectively
  * Avoid merging unrelated commits

* **Caution:**

  * Conflicts may arise if the cherry-picked commit depends on other commits
  * Can duplicate changes if not careful

* **Example:**

  ```
  git checkout main
  git cherry-pick <commit-hash-of-hotfix-2>
  git log --oneline --graph
  ```

---

## Key Takeaways

* Merge → preserves branching history, can create merge commits.
* Rebase → creates linear history, rewrites commit hashes, cleaner logs.
* Squash → compresses multiple commits into one, simplifies history.
* Stash → saves uncommitted work temporarily.
* Cherry-pick → selectively apply commits across branches.

**Tip:** Always visualize your Git history with:

```
git log --oneline --graph --all
```

It helps understand merges, rebases, and cherry-picks visually.

