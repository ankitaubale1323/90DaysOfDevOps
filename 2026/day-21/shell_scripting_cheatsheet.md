

# shell_scripting_cheatsheet.md



Practical DevOps Quick Reference

---

#  Quick Reference Table


# Shell Scripting Cheat Sheet – With Meaning

| Concept       | Syntax / Pattern                  | Practical Example                          | Purpose                     |
|---------------|-----------------------------------|--------------------------------------------|---------------------------- |
| Variable      | `VAR="value"`                     | `ENV="production"`                         | Store reusable values       |
| Argument      | `$1`, `$2`, `$@`, `$#`            | `./deploy.sh prod`                         | Pass runtime inputs         |
| If Condition  | `if [ condition ]; then`          | `if [ -f config.yaml ]; then`              | Execute logic conditionally |
| For Loop      | `for item in list; do`            | `for file in *.log; do`                    | Iterate over items          |
| Function      | `name() { ... }`                  | `backup() { tar -czf backup.tar.gz /data; }` | Reusable logic block      |
| Grep          | `grep [options] pattern file`     | `grep -i "error" app.log`                  | Search text patterns        |
| Awk           | `awk '{print $1}' file`           | `awk -F: '{print $1}' /etc/passwd`         | Column-based processing     |
| Sed           | `sed 's/old/new/g' file`          | `sed -i 's/http/https/g' config.conf`      | Stream editing /replacement |



---

# 1️ Basics

## 1. Shebang
```bash
#!/bin/bash

````

Meaning: Tells system to execute script using Bash interpreter.

---

## 2. Running Script

```bash
chmod +x script.sh   # Give execute permission
./script.sh          # Run executable script
bash script.sh       # Run using bash interpreter
```

---

## 3. Comments

```bash
# This is single-line comment
echo "Hello"  # Inline comment
```

Meaning: Used to explain script; ignored during execution.

---

## 4. Variables

```bash
NAME="Ankita"
echo $NAME
echo "$NAME"
echo '$NAME'
```

Meaning:

* `$NAME` → value of variable
* `"$NAME"` → safe (prevents word splitting)
* `'$NAME'` → prints literal text

---

## 5. Read Input

```bash
read -p "Enter name: " USER
```

Meaning: Takes input from user and stores in variable.

---

## 6. Command-Line Arguments

```bash
$0   # Script name
$1   # First argument
$#   # Total arguments
$@   # All arguments
$?   # Exit status of last command
```

Meaning: Used to pass runtime values to script.

----------------------------------------------------------------
---------------------------------------------------------------

# 2️ Operators & Conditionals

## String Comparison

```bash
[ "$a" = "$b" ]   # Equal
[ "$a" != "$b" ]  # Not equal
[ -z "$a" ]       # Empty string
[ -n "$a" ]       # Not empty
```

Meaning: Used to compare text values.

---

## Integer Comparison

```bash
-eq  # Equal
-ne  # Not equal
-lt  # Less than
-gt  # Greater than
-le  # Less or equal
-ge  # Greater or equal
```

Meaning: Used for numeric comparison.

---

## File Test Operators

```bash
-f file   # File exists
-d dir    # Directory exists
-e path   # Path exists
-r file   # Readable
-w file   # Writable
-x file   # Executable
-s file   # Not empty
```

Meaning: Used to validate files/directories.

---

## If Syntax

```bash
if [ condition ]; then
   echo "True"
elif [ condition ]; then
   echo "Else If"
else
   echo "False"
fi
```

Meaning: Decision making structure.

---

## Logical Operators

```bash
cmd1 && cmd2   # Run cmd2 if cmd1 succeeds
cmd1 || cmd2   # Run cmd2 if cmd1 fails
! condition    # Negation
```

Meaning: Combine conditions logically.

---

## Case Statement

```bash
case $1 in
 start) echo "Start";;
 stop) echo "Stop";;
 *) echo "Invalid";;
esac
```

Meaning: Multiple condition matching (like switch).

----------------------------------------------------------------
---------------------------------------------------------------

# 3️ Loops

## For Loop (List)

```bash
for i in 1 2 3
do
  echo $i
done
```

Meaning: Iterates over list values.

---

## For Loop (C Style)

```bash
for ((i=1; i<=5; i++))
```

Meaning: Counter-based loop.

---

## While Loop

```bash
while [ condition ]
```

Meaning: Runs while condition is true.

---

## Until Loop

```bash
until [ condition ]
```

Meaning: Runs until condition becomes true.

---

## Break / Continue

```bash
break     # Exit loop
continue  # Skip current iteration
```

---

## Loop Over Files

```bash
for file in *.log
```

Meaning: Automate actions on multiple files.

---

## Loop Over Command Output

```bash
while read line
```

Meaning: Process command output line-by-line.

----------------------------------------------------------------
---------------------------------------------------------------

# 4️ Functions

## Define Function

```bash
greet() {
 echo "Hello"
}
```

Meaning: Creates reusable block of code.

---

## Pass Arguments

```bash
echo $1
```

Meaning: Access function parameters.

---

## Return

```bash
return 0
echo "value"
```

Meaning:

* `return` → exit code
* `echo` → actual output

---

## Local Variable

```bash
local name="DevOps"
```

Meaning: Variable limited to function scope.

----------------------------------------------------------------
---------------------------------------------------------------

# 5️ Text Processing Commands

## Grep

```bash
grep "error" file
-i  # Ignore case
-r  # Recursive
-c  # Count
-n  # Line number
-v  # Invert match
-E  # Extended regex
```

Meaning: Search logs & files.

---

## Awk

```bash
awk '{print $1}' file
-F:   # Field separator
BEGIN # Before processing
END   # After processing
```

Meaning: Column-based text processing.

---

## Sed

```bash
s/old/new/g  # Replace
2d           # Delete line 2
-i           # In-place edit
```

Meaning: Stream editor for modifying files.

---

## Cut

```bash
cut -d: -f1 file
```

Meaning: Extract specific column.

---

## Sort

```bash
-n  # Numeric
-r  # Reverse
-u  # Unique
```

Meaning: Sort data.

---

## Uniq

```bash
uniq -c
```

Meaning: Remove duplicate lines.

---

## Tr

```bash
tr 'a-z' 'A-Z'
tr -d '0-9'
```

Meaning: Replace or delete characters.


---------------------------------------------------------------

## WC

```bash
wc -l  # Lines
wc -w  # Words
wc -c  # Characters
```

Meaning: Count content.

---------------------------------------------------------------

# Head / Tail

```bash
head -n 10
tail -n 10
tail -f
```

Meaning:

* Show first lines
* Show last lines
* Follow log in real time

-------------------------------------------------------------
---------------------------------------------------------------

# 6️ Useful DevOps One-Liners

Delete files older than 7 days:

```bash
find /path -type f -mtime +7 -delete
```

Count lines in all logs:

```bash
wc -l *.log
```

Replace string in multiple files:

```bash
sed -i 's/old/new/g' *.conf
```

Check service running:

```bash
systemctl is-active nginx
```

Real-time error monitoring:

```bash
tail -f app.log | grep --line-buffered ERROR
```

-------------------------------------------------------------
---------------------------------------------------------------

# 7 Error Handling & Debugging

# Exit Codes

```bash
exit 0  # Success
exit 1  # Failure
echo $? # Last status
```

---

## Strict Mode

```bash
set -e       # Exit on error
set -u       # Error on unset variable
set -o pipefail  # Fail if any pipe command fails
```

---

## Debug Mode

```bash
set -x
```

Meaning: Shows command execution trace.

---

## Trap

```bash
trap 'cleanup' EXIT
```

Meaning: Run cleanup function before script exits.

---

# 

Always start production scripts with:

```bash
set -euo pipefail
```

-