heat_template_version: 2018-08-31

description: Student Kali OpStation

#Need to do this manually
#DEBIAN_FRONTEND=noninteractive apt-get install --allow-unauthenticated xrdp -y
#will need to answer "No" to question
#vi /etc/xrdp/xrdp.ini ** add 'address=0.0.0.0' under the first entry **
#/etc/init.d/xrdp restart

parameters:

  password:
    type: string
    label: Root Password
    description: root/administrator password for all VMs
    hidden: false
    default: kalipassword
    constraints:
      -  length: { min: 8, max: 20 }
         description: Password must be between 8 and 20 characters
      -  allowed_pattern: "[a-zA-Z0-9]*"
         description: Password may not contain special characters

  ssh_port:
    type: string
    label: SSH Port
    description: SSH port for all boxes from 1000-65535 or 22
    hidden: false
    default: "22"
    constraints:
      -  length: { min: 2, max: 5 }
         description: Port must be between 4 and 5 characters
      -  allowed_pattern: \b(22|[0-9]{4}|[1-5][0-9]{4}|6[0-4][0-9]{3}|65[0-4][0-9]{2}|655[0-2][0-9]|6553[0-5])\b
         description: SSH port must be numeric and from 1026 to 65535 and can not be a port that is already bound

resources:

#Define ports/protocols student can access over floating ip

#Create the Kali VM

  server1:
    type: OS::Nova::Server
    properties:
      name: KaliOps
      image: kali_2019.4
      flavor: m4.large.4
      networks: 
        - network: public
      user_data: 
        str_replace:
          template: |
            #!/bin/bash
            echo "root:$password" | chpasswd
            echo 'Acquire::http::proxy "http://pkg-cache.bbh.cyberschool.army.mil:3142";' > /etc/apt/apt.conf.d/02proxy
            apt-key adv --keyserver hkp://keys.gnupg.net --recv-keys 7D8D0BF6
            apt-get update -y
            apt-get upgrade -y
            ###apt-get dist-upgrade -y
            sed -i 's/#Port 22/Port $ssh_port/g' /etc/ssh/sshd_config
            sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
            sed -i 's/PasswordAuthentication no/#PasswordAuthentication no/g' /etc/ssh/sshd_config
            sed -i 's/#MaxSessions 10/MaxSessions 20/g' /etc/ssh/sshd_config
            systemctl enable ssh
            service ssh start
            DEBIAN_FRONTEND=noninteractive apt-get install --allow-unauthenticated xrdp -y
            apt autoremove -y
            systemctl enable rpcbind
            reboot
          params:
            $password: { get_param: password }
            $ssh_port: { get_param: ssh_port }  
      user_data_format: RAW   

  server2:
    type: OS::Nova::Server
    properties:
      name: WindowsOps
      image: windows_2004
      flavor: m4.xlarge.4
      networks:
      user_data:
        str_replace:
          template: { get_file: "https://git.cybbh.space/t10/public/-/raw/master/heat/environment_scripts/win10_baseline.ps1" }
          params:
            $password: { get_param: password }
            $ssh_port: { get_param: ssh_port}
