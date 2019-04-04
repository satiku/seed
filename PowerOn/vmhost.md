






```
cat vmhost.md | sed  's/... VM_NAME  }}/test/' | sed  's/... VM_NAME  }}/test/'


```


```

VBoxManage createvm --name "{{  VM_NAME  }}" --register --basefolder /home/solo/vm_base
VBoxManage startvm {{  VM_NAME  }} --type headlessBoxManage modifyvm "{{  VM_NAME  }}" --memory 2048 --acpi on --boot1 dvd --nic1 bridged --bridgeadapter1 eno1
VBoxManage createhd --filename /home/solo/vm_drives/{{  VM_NAME  }}.vdi --size 25000
VBoxManage storagectl "{{  VM_NAME  }}" --name "IDE Controller" --add ide
VBoxManage storageattach "{{  VM_NAME  }}" --storagectl "IDE Controller" --port 0 --device 0 --type hdd --medium /home/solo/vm_drives/{{  VM_NAME  }}.vdi
VBoxManage storageattach "{{  VM_NAME  }}" --storagectl "IDE Controller" --port 1 --device 0 --type dvddrive --medium /home/solo/iso_images/debian-9.8.0-amd64-xfce-CD-1.iso
VBoxManage modifyvm "{{  VM_NAME  }}" --vrde on  --vrdeport 5001 


```

```

VBoxHeadless --startvm "Ubuntu 16.04 Server"

```

```
 VBoxManage startvm Ubuntu_1604 --type headless
```
