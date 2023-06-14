VBoxManage createvm --name "Ubuntu for Avramova 2" -ostype Ubuntu14_LTS --register
VBoxManage modifyvm "Ubuntu for Avramova 2" --memory 2251
VBoxManage modifyvm "Ubuntu for Avramova 2" --cpus 1
VBoxManage modifyvm "Ubuntu for Avramova 2" --vram 125
VBoxManage modifyvm "Ubuntu for Avramova 2" --nic1 nat
VBoxManage modifyvm "Ubuntu for Avramova 2" --natpf1 "SSH,tcp,127.0.0.1,1234,10.0.2.15,22"
VBoxManage storagectl "Ubuntu for Avramova 2" --name "AvramovaSATA" --add sata --controller IntelAHCI
VBoxManage storagectl "Ubuntu for Avramova 2" --name "AvramovaIDE" --add ide --controller PIIX4
VBoxManage createmedium --filename DiskAvramova.vdi --size 9000
VBoxManage storageattach "Ubuntu for Avramova 2" --storagectl "AvramovaIDE" --port 0 --device 0 --type dvddrive --medium ubuntu-14.04.6-server-i386.iso
VBoxManage startvm  "Ubuntu for Avramova 2"
VBoxManage controlvm "Ubuntu for Avramova 2" savestate
VBoxManage startvm  "Ubuntu for Avramova 2"
VBoxManage controlvm "Ubuntu for Avramova 2" poweroff
VBoxManage unregistervm  "Ubuntu for Avramova 2" --delete-all

