# Linux-User-Management-Automation
Linux base User Management Automation Script

# Create Users: 

sudo useradd -m vicusr1 
sudo useradd -m nswusr1 
sudo useradd –m qldusr1 

sudo useradd -m cio 
sudo useradd –m crm 

sudo useradd –m vicmgr 
sudo useradd –m nswmgr 
sudo useradd –m qldmgr 

 

# Set Password for Users:  

sudo passwd vicusr1 
sudo passwd nswusr1 
sudo passwd qldusr1 

sudo passwd cio 
sudo passwd crm 

sudo passwd vicmgr 
sudo passwd qldmgr 
sudo passwd qldmgr 

 

# Create Groups: 

sudo addgroup cio 
sudo addgroup crm 
sudo addgroup vic 
sudo addgroup nsw 
sudo addgroup qld 

 
# Add Users in the Groups: 

sudo usermod -a -G vic vicuser1 

sudo usermod -a -G nsw nswuser1 

sudo usermod -a -G qld qlduser1 

sudo usermod -a -G cio cio 

sudo usermod -a -G crm crm 

----------------------------------------- 

sudo usermod -a -G vic vicmgr  

sudo usermod -a -G nsw nswmgr 

#sudo usermod -a -G editors olivia 

  

  

Let’s say you have the directory /READERS and you need to allow all members of the readers group access to that directory. First, change the group of the folder with the command: 

  

# $ sudo chown -R :readers /home/khondakar/READERS  

  

Remove write permission from the group with the command: 

# $ sudo chmod -R g-w /home/khondakar/READERS  

  

Now we remove the others x bit from the /READERS directory (to prevent any user not in the readers group from accessing any file within) with the command: 

# $ sudo chmod -R o-x /READERS 
  
Let’s say you have the directory /EDITORS and you need to give members of the editors group read and write permission to its contents. To do that, the following command would be necessary: 

At this point, any member of the editors group can access and modify files within. All others (minus root) have no access to the files and folders within /EDITORS. 

# $ sudo chown -R :editors /EDITORS 

# $ sudo chmod -R g+w /EDITORS 

# $ sudo chmod -R o-x /EDITORS 

#------------------------------------------------------------------------- 

Say you have a single folder—/DATA—and you want to give members of the readers group read permission and members of the group editors read/write permissions. To do that, you must take advantage of the setfacl command. The setfacl command sets file access control lists for files and folders. Where OPTION is the available options, X is either u (for user) or g (for group), NAME is the name of the user or group, and DIRECTORY is the directory to be used. We’ll be using the option -m for modify. So our command to add the group reader for read access to the /DATA directory would look like this: 

# $ sudo setfacl -m g:readers:rx -R /home/khondakar/DATA 

Now any member of the readers group can read the files contained within /DATA, but they cannot modify them. 

To give members of the editors group read/write permissions (while retaining read permissions for the readers group), we’d issue the command; 

  
# $ sudo setfacl -m g:editors:rwx -R /home/khondakar/DATA 

  
The above command would give any member of the editors group both read and write permission, while retaining the read-only permissions to the readers group. 
