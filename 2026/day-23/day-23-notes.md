Task 1: Understanding Branches

**What is a branch in Git?**
A branch in Git is a separate line of development. It allows you to work on a feature, fix, or experiment independently from the main branch. Each branch has its own history of commits.

**Why do we use branches instead of committing everything to main?**

To keep main stable and clean.

To work on features or bug fixes without affecting others.

To experiment without fear of breaking existing code.

To collaborate safely in teams.

**What is HEAD in Git?**
HEAD is a pointer that points to the current commit you are on. Usually, it points to the latest commit of your current branch. When you switch branches, HEAD moves to the tip of that branch.

**What happens to your files when you switch branches?**
Git updates the working directory to match the snapshot of the commit the branch points to. Files that differ between branches are changed accordingly. Uncommitted changes may prevent switching.