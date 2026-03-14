
# Day 39 – CI/CD Concepts

## 1. The Problem

### What can go wrong when 5 developers deploy manually?

When multiple developers deploy manually, several issues can occur:

* Code conflicts between developers
* One developer may overwrite another developer's changes
* Different environments may cause the application to behave differently
* Human errors during deployment
* No automated testing before deployment
* Production downtime due to broken code

Manual deployment becomes risky as the team grows.

---

### What does “It works on my machine” mean?

“It works on my machine” means the code runs correctly on a developer's local system but fails in another environment such as testing or production.

This happens because:

* Different OS
* Different dependencies
* Different environment variables
* Missing libraries
* Different configurations

CI/CD solves this by running builds and tests in a **standardized environment**.

---

### How many times can a team safely deploy manually?

Manual deployments are slow and risky.

Usually teams deploy **once per day or a few times per week** manually.

With CI/CD automation, teams can safely deploy **multiple times per day**.

---

# 2. CI vs CD

## Continuous Integration (CI)

Continuous Integration is the practice where developers frequently merge their code changes into a shared repository.

Each change automatically triggers a build and automated tests to detect issues early.

**Example:**
A developer pushes code to GitHub and GitHub Actions automatically runs unit tests and builds the application.

---

## Continuous Delivery (CD)

Continuous Delivery ensures that the application is always in a **deployable state**.

After CI completes successfully, the application is automatically prepared for release, but **manual approval** is required before deploying to production.

**Example:**
The pipeline builds a Docker image and pushes it to a registry, waiting for approval before deploying.

---

## Continuous Deployment

Continuous Deployment goes one step further than Continuous Delivery.

Every successful change that passes all pipeline stages is **automatically deployed to production** without human intervention.

**Example:**
A SaaS product automatically deploys new versions to production after tests pass.

---

# 3. Pipeline Anatomy

## Trigger

A trigger is the event that starts the pipeline.

Examples:

* Git push
* Pull request
* Scheduled cron job
* Manual trigger

Example:
A developer pushes code to GitHub → pipeline starts automatically.

---

## Stage

A stage is a **logical phase** of the pipeline.

Common stages:

* Build
* Test
* Security Scan
* Deploy

Stages help organize pipeline execution.

---

## Job

A job is a **group of tasks executed on the same runner**.

Example:

Test Job:

* Install dependencies
* Run unit tests
* Generate test reports

---

## Step

A step is a **single command or action inside a job**.

Example steps:

```
npm install
npm test
docker build .
```

---

## Runner

A runner is the **machine that executes the pipeline jobs**.

It can be:

* GitHub-hosted runner
* Self-hosted runner
* Jenkins agent

Example:
Ubuntu VM running pipeline tasks.

---

## Artifact

Artifacts are **files produced during pipeline execution** and stored for later use.

Examples:

* Compiled binaries
* Docker images
* Test reports
* Build packages

---

# 4. CI/CD Pipeline Diagram

Example pipeline when a developer pushes code:

```
Developer
   |
   |  Push Code
   v
GitHub Repository
   |
   v
CI/CD Pipeline Triggered
   |
   v
+------------------+
| Build Stage      |
| - Install deps   |
| - Build app      |
+------------------+
   |
   v
+------------------+
| Test Stage       |
| - Unit tests     |
| - Integration    |
+------------------+
   |
   v
+----------------------+
| Docker Build Stage   |
| - Build image        |
| - Push to registry   |
+----------------------+
   |
   v
+------------------+
| Deploy Stage     |
| - Deploy to      |
|   Staging Server |
+------------------+
```

---

# 5. Exploring an Open Source Repo

Repository explored: **FastAPI**

Workflow file: `.github/workflows/test.yml`

### What triggers it?

The workflow is triggered by:

* Push to repository
* Pull request

---

### How many jobs does it have?

The workflow contains  5 jobs, mainly focused on testing across different Python versions.

---

### What does it do?

The workflow performs the following tasks:

* Sets up Python environment
* Installs dependencies
* Runs automated tests
* Ensures the code works across multiple Python versions

This ensures that new code changes do not break the application.

---

# Key Takeaway

CI/CD automates the process of:

```
Code → Build → Test → Package → Deploy
```

This reduces human errors, improves reliability, and allows teams to release software faster.

