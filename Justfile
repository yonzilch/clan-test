# set hostname environment
hostname := `hostname`

install input:
  clan machines install {{input}} --target-host {{input}}  --update-hardware-config nixos-facter
