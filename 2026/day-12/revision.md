# Day 12 – Breather & Revision (Days 01–11)

## Goal

Consolidate learning from Days 01–11 and reinforce fundamentals.

-------------------------------------------------------------------------

## Mindset & Plan Review

* Original goal: Build strong Linux fundamentals for DevOps hands-on work.
* What’s working well:

  * Daily hands-on commands instead of only reading
  * Writing small notes after practice
* Tweaks needed:

  * Spend more time on permissions (`chmod` numeric modes)
  * Re-run service troubleshooting commands more often

**Checkpoint:** Goals still aligned

----------------------------------------------------------------------

# Processes & Services (Re-run)

# Commands Practiced

```bash
ps aux | head
systemctl status ssh
journalctl -u ssh --no-pager | tail
```

# Observations

* `ps aux` shows system-wide processes with CPU and memory usage
* `systemctl status ssh` confirms whether SSH service is active and running
* `journalctl -u ssh` helps trace service logs for errors or restarts

**Checkpoint:** Able to quickly check service health

-----------------------------------------------------------------------------------

## File Skills Practice

### Commands Used

```bash
echo "Revision Day" >> notes.txt
mkdir test-dir
cp notes.txt test-dir/
ls -l
chmod 644 notes.txt
```

### Observations

* `echo >>` appends without overwriting
* `ls -l` clearly shows permission changes
* `chmod 644` is safe for readable files

**Checkpoint:** Comfortable with basic file ops 

--------------------------------------------------------------------------------------------------

## Cheat Sheet Refresh (Top 5 Incident Commands)

1. `ls -l` – check permissions quickly
2. `df -h` – disk space issues
3. `free -m` – memory check
4. `ps aux` – process troubleshooting
5. `systemctl status <service>` – service health

---------------------------------------------------------------------------------------------------

## User / Group Sanity Check

### Scenario

```bash
sudo useradd testuser
id testuser
sudo chown testuser:testuser notes.txt
ls -l notes.txt
```

### Result

* User created successfully
* Ownership verified using `ls -l`

**Checkpoint:** Ownership and user verification clear 

---------------------------------------------------------------------

## Mini Self-Check

**1) Which 3 commands save you the most time right now, and why?**

* `ls -l` – instant permission visibility
* `systemctl status` – quick service check
* `ps aux` – find problematic processes fast

**2) How do you check if a service is healthy?**

```bash
systemctl status <service>
journalctl -u <service>
ps aux | grep <service>
```

**3) How do you safely change ownership and permissions?**

```bash
sudo chown user:group file.txt
chmod 644 file.txt
```

**4) Focus for next 3 days**

* Permission numeric modes (`chmod 755`, `700`)
* Log filtering with `journalctl`
* Small real-world troubleshooting scenarios

---------------------------------------------------------------------------------

## Key Takeaways

* Revision boosts confidence more than new topics
* Services + permissions are core Linux skills
* Small daily practice compounds fast

