
command for 
file system 
process management
network management

 File System Commands

* `ls` → list files & folders
* `ls -lh` → list with sizes
* `pwd` → show current path
* `cd /path` → change directory
* `mkdir dir` → create directory
* `touch file` → delete file
* `rm file` → delete file
* `rm -d dir` → delete folder
* `rm -rf dir` → force delete folder
* `cp src dest` → copy file
* `mv src dest` → move / rename
* `find / -name file` → search file
* `du -sh dir` → folder size
* `df -h` → disk usage
![file-command1](image.png)
![file-command2](image-1.png)



step by step excution 



 🔹 Step 1: Listing files and checking directory details

* Used `ls` to list files and folders in the current directory.
* Used `ls -lh` to view files with permissions, ownership, and size in a human-readable format.
* Verified the current working directory using `pwd`.
![ls-pwd](image-3.png)
 *Screenshot shows basic directory listing and current path.*



 🔹 Step 2: Creating directories

* Created multiple directories using `mkdir`:

  * `devops`
  * `90daysofdevops`
  * `90daysofdevopslerner`
  * `ankita`
* Verified directory creation using `ls`.

*Screenshot confirms directories are successfully created.*
![mkdir](mkdir.png)


 🔹 Step 3: Creating files inside a directory

* Navigated into the `devops` directory using `cd devops`.
* Created files using `touch`:

  * Single file: `touch file1`
  * Multiple files at once: `touch file2 file3 file4 file5`
* Verified file creation using `ls`.

*Screenshot shows multiple files created inside the directory.*
![touch](touch.png)



 🔹 Step 4: Navigating directories

* Tried `cd../` (incorrect syntax) and received an error.
* Corrected the command using `cd ..` to move to the parent directory.
* Navigated back into the `devops` directory.

*Screenshot demonstrates correct and incorrect directory navigation.*
![cd](cd.png)



 🔹 Step 5: Deleting files

* Deleted a single file using `rm file1`.
* Deleted multiple files using `rm file2 file5`.
* Verified remaining files using `ls`.

 *Screenshot shows files removed successfully.*
 ![rm](<delete rm.png>)



 🔹 Step 6: Deleting directories

* Deleted an empty directory using `rm -d ankita`.
* Deleted a directory forcefully using `rm -rf 90daysofdevopslerner`.
* Verified deletion using `ls`.
![rm-folder](<rm direct.png>)
 *Screenshot confirms directory removal.*


 🔹 Step 7: Copying files

* Copied a file from `devops` directory to the parent directory using:

  * `cp file3 ..`
* Verified file copy using `ls` in the parent directory.

 *Screenshot shows file copied successfully.*
![cp](copy.png)


🔹 Step 8: Moving files

* Created new files using `touch file1 file2`.
* Moved a file into the `devops` directory using:

  * `mv file2 devops`
* Verified the file movement using `ls`.

 *Screenshot confirms file relocation.*
![mv](<mv file.png>)


🔹 Step 9: Checking directory size

* Used `du -sh devops` to check the total size of the `devops` directory.

*Screenshot displays directory size in human-readable format.*

![du -sh](<du- h.png>)



🔹 Step 10: Checking disk usage

* Used `df -h` to check disk usage of all mounted file systems.
* Verified available space, used space, and mount points.

*Screenshot shows disk usage details.*
![df -h](<df -h.png>)


In this hands-on exercise, I practiced:

* Creating, listing, copying, moving, and deleting files & directories
* Navigating the Linux file system
* Monitoring disk and directory usage



_________________________________________________________________________

 Process Management
 ![allcommands](screencapture-killercoda-playgrounds-scenario-ubuntu-2026-02-01-14_48_46.png)

* `ps aux` → list running processes
![ps aux](image-9.png)

* `top` → live process monitor
![top](top.png)

* `htop` → better top (if installed)
![htop](image-8.png)

* `pidof nginx` → get process ID
* `kill PID` → stop process
* `kill -9 PID` → force kill
![pidof kill](pidofkill.png)

* `uptime` → system running time
![uptime](image-6.png)

* `free -h` → memory usage
![free -h](image-5.png)

* `watch cmd` → repeat command
![watch cmd](watchcmd.png)

____________________________________________________________________________________

 Networking Troubleshooting

* `ping google.com` → check network
![ping](image-4.png)

* `ip addr` → show IP address
![ip addr](image-7.png)

* `ip route` → routing table
![ip route](image-10.png)

* `ss -tulnp` → open ports
![ss -tulnp](image-11.png)

* `curl url` → test API / website
![curl](image-12.png)

* `dig domain` → DNS lookup
![dig ](image-13.png)

