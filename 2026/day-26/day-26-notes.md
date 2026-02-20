

# Day 26 – GitHub CLI (gh)

## 🔹 Task 1: Install and Authenticate

### Commands Used

```bash
gh --version
gh auth login
gh auth status
```

### Observations

* `gh auth login` opens a browser for authentication.
* It asks:

  * GitHub.com or Enterprise?
  * HTTPS or SSH?
  * Web browser or token authentication?
* After login, `gh auth status` shows:

  * Active GitHub account
  * Authentication method
  * Protocol (HTTPS/SSH)

### Authentication Methods Supported by `gh`

`gh` supports:

1. Browser-based authentication (recommended)
2. Personal Access Token (PAT)
3. SSH authentication
4. GitHub Enterprise authentication

💡 For automation, PAT is commonly used.

---

# 🔹 Task 2: Working with Repositories

### Create a new repo from terminal

```bash
gh repo create day26-test-repo --public --clone --add-readme
```

Observation:

* Repo was created on GitHub.
* It automatically cloned locally.
* README was added.

---

### Clone a repo using gh

```bash
gh repo clone owner/repo-name
```

Observation:

* Same as `git clone`
* Automatically configures remote.

---

### View repo details

```bash
gh repo view
```

Observation:

* Shows description, visibility, default branch, URL.

---

### List all repositories

```bash
gh repo list
```

Observation:

* Lists repos owned by your account.
* Can filter using `--limit`, `--public`, `--private`.

---

### Open repo in browser

```bash
gh repo view --web
```

Observation:

* Opens repository in default browser.

---

### Delete repo

```bash
gh repo delete repo-name
```

Observation:

* Requires confirmation.
* Can use `--confirm` for automation.

⚠️ Be careful — this permanently deletes the repo.

---

# 🔹 Task 3: Issues

### Create issue

```bash
gh issue create --title "Test Issue" --body "This is a test issue" --label bug
```

Observation:

* Issue created instantly.
* No browser needed.

---

### List issues

```bash
gh issue list
```

---

### View specific issue

```bash
gh issue view 1
```

---

### Close issue

```bash
gh issue close 1
```

---

### How can `gh issue` be used in automation?

* Automatically create issues on deployment failure
* Create issues from monitoring alerts
* Close issues after successful CI/CD
* Integrate with scripts using `--json` for machine-readable output

This is extremely useful in DevOps pipelines.

---

# 🔹 Task 4: Pull Requests

### Create branch, push, and create PR

```bash
git checkout -b feature-day26
echo "update" >> file.txt
git add .
git commit -m "Day 26 update"
git push -u origin feature-day26

gh pr create --fill
```

Observation:

* PR created without browser.
* `--fill` auto-generates title/body from commit message.

---

### List PRs

```bash
gh pr list
```

---

### View PR details

```bash
gh pr view 1
```

Shows:

* Reviewers
* Status
* Checks
* CI results

---

### Merge PR

```bash
gh pr merge 1 --merge
```

### Merge methods supported:

* `--merge` → Merge commit
* `--squash` → Squash and merge
* `--rebase` → Rebase and merge

---

### How to review someone else's PR?

```bash
gh pr checkout 1
gh pr review 1 --approve
gh pr review 1 --comment
gh pr review 1 --request-changes
```

This allows full PR review from terminal.

---

# 🔹 Task 5: GitHub Actions Preview

### List workflow runs

```bash
gh run list
```

---

### View workflow run details

```bash
gh run view <run-id>
```

---

### How `gh run` and `gh workflow` help in CI/CD?

* Monitor pipeline status from terminal
* Trigger workflows manually
* Debug failed builds
* Download logs
* Automate pipeline checks in scripts

Very powerful for DevOps engineers.

---

# 🔹 Task 6: Useful gh Tricks

### Make raw API calls

```bash
gh api repos/:owner/:repo
```

Used for advanced automation.

---

### Create a gist

```bash
gh gist create file.txt
```

---

### Create a release

```bash
gh release create v1.0.0
```

---

### Create alias

```bash
gh alias set co "pr checkout"
```

Now you can run:

```bash
gh co 1
```

---

### Search repos

```bash
gh search repos kubernetes
```

---

#  Key Learnings from Day 26

 Create repos without browser
 Create PRs entirely from terminal
 Review & merge PRs from CLI
 Manage issues programmatically
 Monitor GitHub Actions from terminal
 Use `--json` for scripting & automation

The GitHub CLI turns your terminal into a complete GitHub control center.


