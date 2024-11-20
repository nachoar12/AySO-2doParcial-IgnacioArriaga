sudo fdisk /dev/sdc
n
p


+1G
n
p


+1G
n
p


+1G
n
e


+3G
n

+1.5
n


t
1
82
t
2
8e
t
3
8e
5
8e
6
8e
sudo pvcreate /dev/sdc2 /dev/sdc3 /dev/sdc5 /dev/sdc6
sudo pvs
sudo vgcreate vgAdmin /dev/sdc2 /dev/sdc3
sudo vgs
sudo pvs
sudo vgcreate vgDevelopers /dev/sdc5 /dev/sdc6
sudo pvs
sudo vgs
sudo lvcreate -L vgDevelopers -n lvDevelopers
sudo lvcreate -L 999M vgDevelopers -n lvDevelopers
sudo lvcreate -L 999M vgDevelopers -n lvTesters
sudo lvcreate -L 999M vgDevelopers -n lvDevops
sudo lvcreate -L 1999M vgAdmin -n lvAdmin
