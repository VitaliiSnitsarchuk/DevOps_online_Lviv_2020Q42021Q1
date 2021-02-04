 Part1
  
1). Linux has basically 5 states:
   - Running/Runnable (R)
     
   - Interruptible Sleep (S)
     
   - Uninterruptible Sleep (D)
     
   - Stopped (T)
     
   - Zombie (Z)
     

2).
![1](https://user-images.githubusercontent.com/75836953/106399396-2442fb80-6421-11eb-8711-63dd560047e5.png)
![2](https://user-images.githubusercontent.com/75836953/106399399-24db9200-6421-11eb-889c-e9fba8e367d5.png)
![3](https://user-images.githubusercontent.com/75836953/106399400-25742880-6421-11eb-845d-9e147b4e576c.png)
![4](https://user-images.githubusercontent.com/75836953/106399401-25742880-6421-11eb-8275-f2a11910862a.png)

3). Proc file system (procfs) is virtual file system created on fly when system boots and is dissolved at time of system shut down.
    It contains the useful information about the processes that are currently running, it is regarded as control and information centre for kernel.

4).
![5](https://user-images.githubusercontent.com/75836953/106399402-260cbf00-6421-11eb-95b6-ec54f977b489.png)
![6](https://user-images.githubusercontent.com/75836953/106399403-260cbf00-6421-11eb-87f2-305a83346812.png)
![7](https://user-images.githubusercontent.com/75836953/106399404-26a55580-6421-11eb-9291-85bd01536554.png)
![8](https://user-images.githubusercontent.com/75836953/106399405-26a55580-6421-11eb-8f2b-74fc1ec58746.png)

5).
![9](https://user-images.githubusercontent.com/75836953/106399406-273dec00-6421-11eb-9fcd-733abae26908.png)
![10](https://user-images.githubusercontent.com/75836953/106399407-273dec00-6421-11eb-960b-e2910cc65415.png)


6). The linux kernel processes are started by the kernel itself, the kthread process is assigned as the parent process, with PID = 2.
      Processes of the kernel should be considered the process itself with PID = 2, as well as processes with PPID = 2
     
   We can use this command ==> sudo ps --ppid=2 --pid=2
   
   Command pstree without parameters shows only the tree of processes spawned by init, that is, user processes.
   Kernel processes will be shown by the command ==> sudo pstree 2.
![11](https://user-images.githubusercontent.com/75836953/106399408-273dec00-6421-11eb-8bd4-a26bd5d03b85.png)
![12](https://user-images.githubusercontent.com/75836953/106399409-27d68280-6421-11eb-9f7e-096fcade2992.png)
![13](https://user-images.githubusercontent.com/75836953/106399410-27d68280-6421-11eb-8cae-b4c3d06af6b1.png)

7). There are columns in the header of this list of processes ==>

   USER - user of process,
     
   PID - the unique process ID,
     
   %CPU - the percentage of CPU that is being used by the process,
     
   %MEM - the percentage of Memory that is being used by the process,
     
   VSZ -  the Virtual Memory Size,
     
   RSS - the Resident Set Size and is used to show how much memory is allocated to that process and is in RAM,
   
   TTY - terminal type that the user is logged into,
   
   STAT - the process’s status,
   
   START - process start time,
   
   TIME - amount of CPU in minutes and seconds that the process has been running,
   
   COMMAND - name of the command that launched the process.

STAT displays the process’s status. Here is a list of the various process statuses and what they mean:

D – Uninterruptible sleep (usually a critical system process, a process that cannot be killed without rebooting)

R – Running or runable (on run queue) 

S – Interruptible sleep (waiting for an event to complete)

T – Stopped, either by a job control signal or because it is being traced

Z – Defunct (“zombie”) process, terminated but not closed by the parent process
![14](https://user-images.githubusercontent.com/75836953/106399413-286f1900-6421-11eb-9a8f-e0f7208fe445.png)


8). For display only the processes of a specific user we can use:

   - ps -u <username>
     
   - ps -ef | grep <username>
     
   - ps -efl | grep <username>
     
   - top -U <username>
     
   - htop -u <username>
![14 5](https://user-images.githubusercontent.com/75836953/106399927-3a05f000-6424-11eb-849e-9fbce2dcd9b5.png)
![15](https://user-images.githubusercontent.com/75836953/106399414-286f1900-6421-11eb-9074-768abced60e9.png)
![16](https://user-images.githubusercontent.com/75836953/106399415-2907af80-6421-11eb-8748-081156d20921.png)
  
  
  
  9). To analyze existing running tasks with ps command we can use :
  
  1. Watch command can be used to turn ps into a realtime process reporter ==> 
       watch -n 1 'ps -e -o uid,pgid,pid,uname,cmd,pmem,pcpu --sort=-pmem,-pcpu | head -15'
       
  2. To get specific results in ps command , we can pipe the output to egrep,grep utility tools and provide the search criteria ==> 
       ps -ef | grep php, ps -ejf | egrep 'STIME|http'
       
     To analyze existing running tasks we can also use:
       
   1. top command - display and update sorted information about Linux processes,
    
   2. atop command - advansed system and process monitor for Linux,
    
   3. htop command - look up and signal processes based on name and other attributes,
    
   4. pstree command - display a tree of processes.
![17](https://user-images.githubusercontent.com/75836953/106399416-29a04600-6421-11eb-9f32-8bd6335b97a5.png)
![18](https://user-images.githubusercontent.com/75836953/106399417-29a04600-6421-11eb-8f6d-550305af8d65.png)


10). Top command is used to show the Linux processes. It provides a dynamic real-time view of the running system. 
     Usually, this command shows the summary information of the system and the list of processes or threads which are currently managed by the Linux Kernel:
     
       PID: Shows task’s unique process id,
       PR: Stands for priority of the task,
       SHR: Represents the amount of shared memory used by a task,
       VIRT: Total virtual memory used by the task,
       USER: User name of owner of task,
       %CPU: Represents the CPU usage,
       TIME+: CPU Time, the same as ‘TIME’, but reflecting more granularity through hundredths of a second,
       SHR: Represents the Shared Memory size (kb) used by a task,
       NI: Represents a Nice Value of task. A Negative nice value implies higher priority, and positive Nice value means lower priority,
       %MEM: Shows the Memory usage of task.
![19](https://user-images.githubusercontent.com/75836953/106399418-2ad17300-6421-11eb-86ab-840783d16106.png)

11).  To display specific user process ==> top -u username
![20](https://user-images.githubusercontent.com/75836953/106399419-2ad17300-6421-11eb-893c-dbd7ef48e5c2.png)


12). To control the top command we can use:

      1. Press ‘z‘ option in running top command will display running process in color which may help as to identified running process easily,
      2. Press ‘c‘ option in running top command, it will display absolute path of running programm,
      3. Press (Shift+P) to sort processes as per CPU utilization,
      4. Press (Shift+O) to Sort field via field letter, for example press ‘a‘ letter to sort process with PID,
      5. We can change screen refresh interval if pressing ‘d‘ option in running top command and change it as desired,
      6. We can use ‘r‘ option to change the priority of the process also called Renice,
      7. Press ‘h‘ option to obtain the top command help,
      8. We can kill a process after finding PID of process by pressing ‘k‘ option in running top command without exiting from top window.
![21](https://user-images.githubusercontent.com/75836953/106399420-2b6a0980-6421-11eb-9b05-f93198f5bd28.png)
![22](https://user-images.githubusercontent.com/75836953/106399421-2b6a0980-6421-11eb-83de-5da0aca324d1.png)
![23](https://user-images.githubusercontent.com/75836953/106399422-2c02a000-6421-11eb-9eac-2332d45c6fc4.png)


13).  We can sort the contents of the processes window using various parameters ====> Press (Shift+O) to Sort field via field letter:

        1. press ‘K‘ letter to sort CPU usage, 
        2. press ‘n‘ letter to sort Memory usage (RES),
        3. press ‘m‘ letter to sort CPU Time hundredths,
        4. press ‘e‘ letter to sort User Name, etc.
![24](https://user-images.githubusercontent.com/75836953/106399424-2c02a000-6421-11eb-8505-dee886f7e09f.png)
![25](https://user-images.githubusercontent.com/75836953/106399425-2c9b3680-6421-11eb-9c1f-e697297ae503.png)
![26](https://user-images.githubusercontent.com/75836953/106399426-2c9b3680-6421-11eb-9645-81ccbce328be.png)
![27](https://user-images.githubusercontent.com/75836953/106399428-2d33cd00-6421-11eb-960f-7b455a78d31a.png)

14). Linux processes are started with a specific priority. By default, all regular processes are equal and are started with the same priority,
     which is the priority number 20. 
      
   To set priority used commands nice and renice. We can use nice if we want to start a process with an adjusted priority.
   Every process running on your system has a nice value. By default, the nice value is set to 0. The process priority range is from -20 to 19. 
   We can change the process priority using the nice command and give that process more CPU time ==> nice -15 vim.
      
   The renice command can be used to change the priority of a process that is already running. Only root can lower the priority of a process.
   We need to specify the PID of the process whose priority we would like to modify ==> sudo renice 7 14475
      
      
 15). We can use the 'r' command from the top utility to change the priority of a currently running process. 
     Press 'r' if you want to just change the priority of the process. This will ask PID for renice, enter the PID and priority.
![28](https://user-images.githubusercontent.com/75836953/106399429-2d33cd00-6421-11eb-8a01-c961e6b5cfac.png)

16). kill command in Linux is a built-in command which is used to terminate processes manually. kill command sends a signal to a process which terminates the process.      If the user doesn’t specify any signal which is to be sent along with kill command then default TERM signal is sent that terminates the process.

     kill command located in ==> /bin/kill.
     To get a list of all available signals, invoke the command with the -l option ==> kill -l

     Signals can be specified in three different ways:
       1. Using number (-1 or -s 1) ==> kill -1 PID_NUMBER
       2. Using the “SIG” prefix (-SIGHUP or -s SIGHUP) ==> kill -SIGHUP PID_NUMBER
       3. Without the “SIG” prefix (-HUP or -s HUP) ==> kill -HUP PID_NUMBER

    The kill command sends a signal to specified processes or process groups, causing them to act according to the signal. 
    When the signal is not specified, it defaults to -15 (-TERM).

     The most commonly used signals are:
      1 SIGHUP - Reload a process.
      9 SIGKILL - Kill a process.
      15 SIGTERM - Gracefully stop a process.
      2 SIGINT - Interrupt from keyboard.
      17,19,23 SIGSTOP - Stop the process.

   The syntax of the kill command takes the following form ==> kill [OPTIONS] [PID]
   
   kill -s : To show how to send signal to processes ==> kill {-signal | -s signal} pid 
   
   kill -L : This command is used to list available signals in a table format ==> kill {-l | --list[=signal] | -L | --table} 
![29](https://user-images.githubusercontent.com/75836953/106622273-18b81780-657c-11eb-890b-a504adccdfe6.png)
![30](https://user-images.githubusercontent.com/75836953/106622279-19e94480-657c-11eb-8376-e839d05fe073.png)
![31](https://user-images.githubusercontent.com/75836953/106622283-1a81db00-657c-11eb-9cab-468df92bc57c.png)


17). The jobs command displays a list of currently running background jobs.
     In addition to the usual PIDs, tasks in the background have their own number, which has a numerical value.
     In addition, jobs displays the status of the process - Running, Stopped, Done, Exit.

     The bg (background) command allows a running process to continue in the background.

    To bring the task out of the background, use the fg (foreground) command, to which you can pass the task number as an argument.
    For example, command ==> fg 7

    If we know when starting the process that you will want to close the terminal before the process completes, you can start it using the nohup command.
    This makes the started process immune to the SIGHUP signal. It will continue running when the terminal closes. 
    It will be reassigned as a child of the init system ==> nohup ping -i 5 google.com &

    If we close the terminal window and open another one, the process will still be running.
    To kill the ping process, we’ll use pgrep and the -a flag to search for the executable ==> pgrep -a ping  and  kill PID.

    Sleep command is used to delay for a fixed amount of time during the execution of any script. 
    The yes command outputs the same string, STRING, in a constant stream. If STRING is not specified, the word it repeats is "y". 
![32](https://user-images.githubusercontent.com/75836953/106622284-1a81db00-657c-11eb-8089-58f106440f33.png)
![33](https://user-images.githubusercontent.com/75836953/106622287-1b1a7180-657c-11eb-954e-8e5e2ab04d59.png)
![34](https://user-images.githubusercontent.com/75836953/106622291-1b1a7180-657c-11eb-8724-f0763eacd828.png)
![35](https://user-images.githubusercontent.com/75836953/106622293-1bb30800-657c-11eb-93ad-6dba2da9fb2a.png)
![36](https://user-images.githubusercontent.com/75836953/106622295-1bb30800-657c-11eb-9c61-37a2c7e549ab.png)
![37](https://user-images.githubusercontent.com/75836953/106622297-1c4b9e80-657c-11eb-8dca-56f66325d091.png)


Part2
1). Installing OpenSSH Server using PowerShell ==> Add-WindowsCapability -Online -Name OpenSSH.Server*'

    Verifying the OpenSSH Server Installation ==> Get-WindowsCapability -Online | ? Name -like 'OpenSSH.Ser*'

    After installing the OpenSSH server on Windows, we need to change the startup type of the sshd service to automatic and start the service using PowerShell:

    - Set-Service -Name sshd -StartupType 'Automatic'
    - Start-Service sshd 

   We must allow incoming connections on 22 port ==> netsh advfirewall firewall add rule name=sshd dir=in action=allow protocol=TCP localport=22

   Checking firewall permission on incoming Windows connections on TCP / 22 port ==>
   Get-NetFirewallRule -Name *OpenSSH-Server* |select Name, DisplayName, Description, Enabled

   Using nestat we can check which ports on the system are running and waiting for connections. We need to check port 22 ==> netstat -a

   Checking port 22 of the host ==> Test-NetConnection ip-adress -p 22
   
   I connect to the host ==> ssh  user@ip-adress

   I used command for generate cryptographic key pair - public key and private key where the public key is configured on the server to authorize access,
   and grant anyone who has a copy of the private key access to the server ==> ssh-keygen

   I copy the public key to the host ==> scp C:\.....\.ssh\id_rsa.pub  user@ip-adress  and connect to it.
   We can also connect using PuTTY.  

![41](https://user-images.githubusercontent.com/75836953/106948768-ce2dcb00-6734-11eb-9006-3ef13b4c5f56.jpg)
![42](https://user-images.githubusercontent.com/75836953/106948772-cf5ef800-6734-11eb-977d-aee142077da3.jpg)
![43](https://user-images.githubusercontent.com/75836953/106948773-cf5ef800-6734-11eb-8606-c06628732678.jpg)
![44](https://user-images.githubusercontent.com/75836953/106948774-cff78e80-6734-11eb-9f86-bfd7805d6dfc.jpg)
![45](https://user-images.githubusercontent.com/75836953/106948775-cff78e80-6734-11eb-9391-d0d92851ffda.jpg)
![46](https://user-images.githubusercontent.com/75836953/106948777-d0902500-6734-11eb-8bcc-8e500aeee1dc.jpg)
![47](https://user-images.githubusercontent.com/75836953/106948778-d0902500-6734-11eb-8137-3e4fa1dd9639.jpg)
![48](https://user-images.githubusercontent.com/75836953/106948779-d0902500-6734-11eb-96ce-ef3bb4f5d7b3.jpg)

2).
![51](https://user-images.githubusercontent.com/75836953/106622887-bb709600-657c-11eb-884f-8c4879a374c7.png)

3).
![52](https://user-images.githubusercontent.com/75836953/106622860-b7447880-657c-11eb-8ca1-bffe2f10c2fa.png)
![53](https://user-images.githubusercontent.com/75836953/106622862-b7dd0f00-657c-11eb-9062-7308406257dd.png)
![54](https://user-images.githubusercontent.com/75836953/106622864-b875a580-657c-11eb-8787-ae25c81a6894.png)
![55](https://user-images.githubusercontent.com/75836953/106622866-b90e3c00-657c-11eb-9c48-2c52077fae65.png)
![56](https://user-images.githubusercontent.com/75836953/106622870-b90e3c00-657c-11eb-8e95-195068f7448e.png)

4).
![57](https://user-images.githubusercontent.com/75836953/106622873-b9a6d280-657c-11eb-804e-0dd21a0a5128.png)
![58](https://user-images.githubusercontent.com/75836953/106622876-ba3f6900-657c-11eb-8893-6104dd5b8c2a.png)
![59](https://user-images.githubusercontent.com/75836953/106622878-ba3f6900-657c-11eb-861d-a2b479252c8b.png)
![60](https://user-images.githubusercontent.com/75836953/106622883-bad7ff80-657c-11eb-81e2-fbb4854f9db2.png)
![61](https://user-images.githubusercontent.com/75836953/106622886-bad7ff80-657c-11eb-93a9-8f97c324cdf9.png)











