
# Day 28 – Complete Revision (Day 1–27)

## Objective

Today was dedicated to revising every concept covered so far:
DevOps fundamentals, Linux, Cloud setup, Networking, Shell scripting, Git & GitHub, GitHub CLI, and Developer branding.

The goal was to:
- Identify knowledge gaps
- Strengthen fundamentals
- Improve command recall speed
- Prepare for interview-style questioning

---

# 1️⃣ DevOps & Cloud Fundamentals (Day 1)

## What is DevOps?
DevOps is a culture and set of practices that combines Development and Operations to improve collaboration, automate workflows, and deliver software faster and more reliably.

## SDLC Phases
- Planning
- Development
- Testing
- Deployment
- Monitoring

## Cloud Basics
- On-demand resources
- Pay-as-you-go model
- Scalability
- High availability
- Major providers: AWS, Azure, GCP

---

# 2️⃣ Linux Fundamentals (Day 2–7)

## File System Hierarchy
- `/` → Root
- `/home` → User directories
- `/etc` → Configuration files
- `/var` → Logs and variable data
- `/tmp` → Temporary files
- `/bin`, `/usr`, `/sbin` → System binaries

## File Operations
- `ls`, `cd`, `pwd`
- `mkdir`, `rm`, `cp`, `mv`
- `touch`, `cat`, `less`

## Process Management
- `ps aux`
- `top`
- `htop`
- `kill -9 PID`
- Background: `&`
- Foreground: `fg`

## systemd
- `systemctl start nginx`
- `systemctl stop nginx`
- `systemctl enable nginx`
- `systemctl status nginx`

## Troubleshooting
- CPU → `top`
- Memory → `free -m`
- Disk → `df -h`, `du -sh`
- Logs → `/var/log`

---

# 3️⃣ Users, Groups & Permissions (Day 9–11)

## User Management
- `useradd`
- `passwd`
- `usermod`
- `userdel`

## Permissions
- Read (4)
- Write (2)
- Execute (1)

Example:
`chmod 755 script.sh`
Owner: rwx  
Group: r-x  
Others: r-x  

## Ownership
- `chown user:file`
- `chgrp group file`

---

# 4️⃣ Volume Management – LVM (Day 13)

## Components
- PV → Physical Volume
- VG → Volume Group
- LV → Logical Volume

## Why LVM?
- Flexible resizing
- Snapshot support
- Dynamic storage allocation

Unlike traditional partitions, LVM allows resizing without reformatting.

---

# 5️⃣ Networking (Day 14–15)

## Core Concepts
- IP Address
- Subnet
- CIDR notation
- DNS resolution
- Ports

## Common Ports
- 22 → SSH
- 80 → HTTP
- 443 → HTTPS
- 3306 → MySQL

## Networking Commands
- `ping`
- `curl`
- `ss -tulnp`
- `netstat`
- `dig`
- `nslookup`

---

# 6️⃣ Shell Scripting (Day 16–21)

## Basics
- Shebang: `#!/bin/bash`
- Variables
- Arguments: `$1`, `$2`
- User input: `read`

## Conditionals
```

if [ condition ]; then
elif
else
fi

```

## Loops
- `for`
- `while`
- `until`

## Functions
```

function_name() {
echo "Hello"
}

```

## Error Handling
`set -euo pipefail`

- Exit on error
- Fail on undefined variables
- Catch pipe failures

## Text Processing
- `grep`
- `awk`
- `sed`
- `sort`
- `uniq`

## Scheduling
```

crontab -e
0 3 * * * /path/script.sh

```

---

# 7️⃣ Git & GitHub (Day 22–25)

## Basic Workflow
- `git init`
- `git add`
- `git commit`
- `git push`
- `git pull`

## Branching
- `git branch`
- `git checkout -b feature`
- `git merge`

## Merge Types
- Fast-forward
- Merge commit
- Squash merge

## Rebase
- Rewrites history
- Keeps commit tree clean
- Should not be used on shared branches

## Stash
- `git stash`
- `git stash pop`

Used to temporarily save uncommitted work.

## Reset vs Revert
- `reset --hard` → Dangerous, rewrites history
- `revert` → Safe, creates undo commit

## Cherry Pick
`git cherry-pick <commit-id>`

## Branching Strategies
- GitFlow
- GitHub Flow
- Trunk-Based Development

Recommended for small team: GitHub Flow

---

# 8️⃣ GitHub CLI (Day 26)

## Commands
- `gh repo create`
- `gh pr create`
- `gh issue create`
- `gh auth login`

Allows GitHub management directly from terminal.

---

# 9️⃣ GitHub Profile & Branding (Day 27)

## Focus Areas
- Clean README
- Organized repositories
- Clear project descriptions
- Professional commit history

Developer branding reflects technical maturity.

---

# Quick-Fire Interview Answers

1. chmod 755 → Owner full access, others read & execute.
2. Process vs Service → Service is managed background process.
3. Port 8080 → `ss -tulnp | grep 8080`
4. set -euo pipefail → Makes scripts production-safe.
5. reset --hard vs revert → Reset rewrites history, revert safely undoes.
6. Branching strategy → GitHub Flow.
7. git stash → Temporarily saves changes.
8. 3 AM job → `0 3 * * * /path/script.sh`
9. fetch vs pull → Fetch downloads, pull downloads + merges.
10. LVM → Flexible disk management system.

---

# Overall Reflection

Revision revealed:
- Need faster recall of networking troubleshooting steps
- More hands-on with LVM resizing
- Practice handling Git rebase conflicts

Confidence Level: 8/10

Biggest Improvement:
Better understanding of how Linux, networking, and Git connect in real-world DevOps workflows.
