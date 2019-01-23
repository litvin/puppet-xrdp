class xrdp::fw(
	String $port   	    = '3389',
){
case $::osfamily {
    'Debian': {
        	exec { 'open port 3389 ufw Debian':
  	  		path    => '/usr/bin:/usr/sbin:/bin:/sbin',
 	  		command => "iptables -A INPUT -p tcp --dport 3389 -j ACCEPT",
# 	  		command => "echo nothing to do",
  	  		unless  => "iptables -L -n --line-numbers | grep 3389",
	   	     }
	      }
    'Redhat': {
       		exec { 'open port 3389 firewalld Redhat':
  			path    => '/usr/bin:/usr/sbin:/bin',
 			command => "firewall-cmd --permanent --add-port=3389/tcp & firewall-cmd --reload",
			onlyif   => 'systemctl status firewalld | grep running',
  			unless  => "firewall-cmd --zone=public --list-ports | grep 3389",
	   	}
	    }
      }
}	

