class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  
  service {'sshd':
    ensure => 'running',
    enable => 'true',
  }
  
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-ra',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDUOfCqIh9+/AdmDosbLLVQklaKbdSDUdHPGKtl68tPHI5j00bbiMhmTVCQSPp0HZOr1wAasc+GSCo02B6m0Qc92FCdBj9rAi/pkQbQQAuwPnAZXEzoqkHpewTKFzAIy2lupE4Ct9SFBbCgFXF51TpESQ9uwtYCgdRY/ax5X4jF9pyvih4a8dK4vomAvdo1taSA9rYyiPeUgnLQlj4N74ISOQ/nzjJ4842/DfnjU0aeAhceOnFmDSf3hERMp7YPXGi5/lbAaSE1CBKTmO6EUcd+LxkLyeGNezwa0zEh7GK97ow7Td+qMKL3/4a1N+bEHbr0lKZBGujPIG1MqhbPi1wp',
 }
}
