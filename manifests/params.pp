class xrdp::params {
	$package_name       = 'xrdp'
	$package_ensure     = 'present'
	$config_name        = 'xrdp.ini'
	$config_file_mode   = 664
	$config_ls_title    = 'This My Title'
	$service_ensure     = 'running'
	$service_enable     = true
	$service_hasstatus  = true
	$service_hasrestart = true
	
	$service_name = $fact['os']['family'] ? {
		'Debian' => 'xrdp',
		default  => 'xrdpd',
	}
}

