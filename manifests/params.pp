class xrdp::params {
	$package_name       = 'xrdp'
	$package_ensure     = 'present'
	$config_name        = 'xrdp.ini'
	$config_file_mode   = '644'
	$config_ls_title    = 'This My Title'
	$service_ensure     = 'running'
	$service_enable     = true
	$service_hasstatus  = true
	$service_hasrestart = true
	$service_name       = 'xrdp'
	$service_provider   = 'systemd'

case $::osfamily {
    'Debian': {
	$config_file        = 'astra.xrdp.ini.erb'
	    }
    'Redhat': {
	$config_file        = 'rh.xrdp.ini.erb'
	    }
      }

}

