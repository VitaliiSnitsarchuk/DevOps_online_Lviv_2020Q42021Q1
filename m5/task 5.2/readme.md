1). File passwd contain lines of the following form, separated by colons==>
      username: pswd: uid: gid: uidcomments: directory: shell.
      
      Where:
    1) username -username,
    2) pswd-password uid-unique identifier of the user within the system,
    3) gid-unique identifier of the group within the system to which the user belongs,
    4) uidcomments -comment, extended user description, for example, full name,
    5) directory -user's home directory,
    6) shell - program name -the user's command interpreter.
  
   The file group applies to the general security scheme for Unix-like systems: user, group, and file access.
   
    The format for this file is as follows ==> group_name:password:group_id:list.
          Where:
        1) group_name  - name for the group,
        2) password  - encrypted password of this group,
        3) group_id  - unique identifier for this group.

   On the system exits users: root, regular users, pseudo-users, daemons, system and reserved users.
   
   Pseudo-users contains description lines in the password file. These descriptions are never edited. 
   Users of these names are not registered in the system and are only needed to confirm ownership of the processes. 
   
    They haven`t shell (sbin/nologin). 
    The most used are:
     1) daemon - Used by system service processes, 
     2) bin - Gives ownership of executables command,
     3) adm - Owns registration files, 
     4) nobody - Used by many services, 
     5) sshd – used by the secure shell server.

![1](https://user-images.githubusercontent.com/75836953/105887845-eb67e880-6014-11eb-9310-08e36f0f5462.png)
![2](https://user-images.githubusercontent.com/75836953/105887850-ec991580-6014-11eb-9b7f-6fc0f1200546.png)

2). UID - unique identifier of the user within the system. We can find UID stored in the /etc/passwd file.

0 > The root super-user.

1…999 > System users. These are users that do not map to actual “human” users, but are used as security identities for system daemons, 
 to implement privilege  separation and run system daemons with minimal privileges.

1000…65533 and 65536…4294967294 > Everything else, i.e. regular (human) users.
![3](https://user-images.githubusercontent.com/75836953/105887851-ec991580-6014-11eb-8aed-22fcdb9b8b1d.png)

3). GID - unique identifier of the group within the system to which the user belongs.
![4](https://user-images.githubusercontent.com/75836953/105887852-ed31ac00-6014-11eb-8fa6-193601d86742.png)
4)
![5](https://user-images.githubusercontent.com/75836953/105887853-ed31ac00-6014-11eb-8edd-3e30bfced9ce.png)

5). The commands for adding a user to the system  -  useradd [options] username.

  Basic parameters for create a user:
  
    1) user password - (sudo passwd username).
    2) user home directory. Use the -m option to create the user home directory as /home/username - (sudo useradd -m username).
    3) user group. By default group created with user, but if we want add user to specific group - (sudo usermod -a -G groupname username).
![6](https://user-images.githubusercontent.com/75836953/105887855-edca4280-6014-11eb-8738-800d9690c46b.png)

6). Rename your username: sudo usermod -l new_username old_username.
![7](https://user-images.githubusercontent.com/75836953/105887861-edca4280-6014-11eb-92dc-d61379055795.png)

7). Skel is derived from the skeleton because it contains basic structure of home directory.

    The /etc/skel directory contains files and directories that are automatically copied over to a new user’s when it is created from useradd command.
    This will ensure that all the users gets same intial settings and environment.
    Default Permission of the /etc/skel directory is drwxr-xr-x.
    The configuration file SKEL -  /etc/default/useradd. By default SKEL=/etc/skel.
![8](https://user-images.githubusercontent.com/75836953/105887863-ee62d900-6014-11eb-9d64-08fe3fd2e066.png)

8). We can delete the user home directory and mail spool pass the -r option to userdel for a user:  userdel -r username.
![9](https://user-images.githubusercontent.com/75836953/105887866-ee62d900-6014-11eb-9f26-f30192da5929.png)

9). This can be done using the following two Linux Commands:

    a). passwd: This is used to update user’s authentication tokens. This is achieved by calling the Linux-PAM and Libuser API.
    Run the passwd command with the -l switch to lock the given user account ==> sudo passwd -l username.
    Checking the user account locked status using passwd command ==> sudo passwd -S username.
    Checking the locked user account status using /etc/shadow file ==> sudo grep username /etc/shadow.
    Run the passwd command with the -u switch to unlock the given user account ==> sudo passwd -u username.

b). usermod: This is used to modify/update given user’s account information. It used to add a user to a specific group.

    Run the usermod command with the -L switch to lock the given user account ==> sudo usermod -L username.
    Checking the user account locked status using passwd command ==> sudo passwd -S username.
    Checking the locked user account status using /etc/shadow file ==> sudo grep username /etc/shadow.
    Run the usermod command with the -U switch to unlock the given user account ==> sudo usermod -U username.

    Alternativly this can be done by assigning the nologin shell to the given user ==> sudo usermod -s /sbin/nologin username.
    We can enable the user ssh access by assigning back to the old shell ==> sudo usermod -s /bin/bash usermode.
![10](https://user-images.githubusercontent.com/75836953/105887868-eefb6f80-6014-11eb-934e-f1bbfc9bc2ec.png)

10). Open the configuration file with - sudo visudo, and add the following line to the file ==> username ALL=(ALL) NOPASSWD:ALL.

     Close the editor to apply the changes.
     Delete the password for your user by running this command ==> sudo passwd -d username.
![11](https://user-images.githubusercontent.com/75836953/105887871-ef940600-6014-11eb-8224-4092b1c927c7.png)
![12](https://user-images.githubusercontent.com/75836953/105887873-ef940600-6014-11eb-9ae6-fe0a7a4e4a3f.png)

11). From left to right we see the following columns:

      inods,
      file permissions,
      number of (hard) links,
      owner name,
      owner group,
      file size in bytes,
      time of last modification,
      file/directory name.
      
12). Permission Groups.

     Each file and directory has three user based permission groups:
    owner - The Owner permissions apply only the owner of the file or directory, they will not impact the actions of other users.
    group - The Group permissions apply only to the group that has been assigned to the file or directory, they will not effect the actions of other users.
    all users - The All Users permissions apply to all other users on the system, this is the permission group that you want to watch the most.

     Permission Types.
     
     Each file or directory has three basic permission types:
     read - The Read permission refers to a user's capability to read the contents of the file.
     write - The Write permissions refer to a user's capability to write or modify a file or directory.
     execute - The Execute permission affects a user's capability to execute a file or view the contents of a directory.

The permission in the command line is displayed as: -rwxrwxrwx.

    1) the first type of files (-) it`s a regular file.
    2) the following set of three characters (rwx) is for the owner permissions.
    3) the second set of three characters (rwx) is for the Group permissions.
    4) the third set of three characters (rwx) is for the All Users permissions.
![13](https://user-images.githubusercontent.com/75836953/105887875-ef940600-6014-11eb-8821-4110ec57eef9.png)

13). In this picture we can see company.sql file.

    Owner this file is user vitalii, he belong to group vitalii. Owner file and group have "rw-" file permissions on this file.
    They can read and write file. Anyone else has "r--" file permissions and can only read this file.
    Nobody don`t have execute permission because it means the user can execute the file as a program or a shell script. 
    This file isn`t a program or script. And Linux does not allow a file to be created with execute permissions.
![14](https://user-images.githubusercontent.com/75836953/105887876-f02c9c80-6014-11eb-9608-db4bfb6a81a0.png)

14). For change the owner of a file (directory) we can use chown command.
     For change the mode of access to the file we can use chmod command.
![15](https://user-images.githubusercontent.com/75836953/105887878-f02c9c80-6014-11eb-89f0-c87e28e159c7.png)

15). In this example, we have 2 files, they have permissions in octal representation ==> 554 and 440

     The owner of the file with 554 has read and execute permissions, the owner's group has read and execute permissions, all others have read-only rights.
     The second file with 440 => the owner has read-only rights, the owner's group is read-only, all other users have no rights.

    By default, on Linux systems, the default creation permissions are 666 for files, which gives read and write permission to user, group, and others, 
    and to 777 for directories, which means read, write and execute permission to user, group, and others. Linux does not allow a file to be created 
    with execute permissions.

    The default creation permissions can be modified using the umask utility. In this case umask value = 002

    Files: 666 - 002 = 664. The owner and group can read and modify the files. Others can only read the files.
    Directories: 777 - 002 = 775. The owner and group can cd into the directory and list read, modify, create or delete the files in the directory. 
    Others users can cd into the directory, list and read the files.
![16](https://user-images.githubusercontent.com/75836953/105887879-f0c53300-6014-11eb-978a-e3d38bcce009.png)

16). Sticky bit - this permission does not affect individual files. However, at the directory level, it restricts file deletion.

     Only the owner (and root) of a file can remove the file within that directory.
     We can add sticky bit to directory use a few methods : # chmod +t directory  or  # chmod 1777 directory.
    The permission directory in the command line is displayed as: drwxrwxrwxt 1777. Symbol t and number 1 mean that it is installed sticky bit.
    For remove sticky bit from directory : # chmod -t directory  or  # chmod 0777 directory.
![17](https://user-images.githubusercontent.com/75836953/105887880-f0c53300-6014-11eb-8003-274d8d5833d6.png)


17).  In the command script should be present execute permission for everyone ==> chmod ugo+x
