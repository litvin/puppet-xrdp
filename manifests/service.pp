class xrdp::service(
	String $service_name        = $xrdp::service_name,
	String $service_ensure      = $xrdp::service_ensure,
	String $service_provide     = $xrdp::service_provider,
	Boolean $service_enable     = $xrdp::service_enable,
	Boolean $service_hasstatus  = $xrdp::service_hasstatus,
	Boolean $service_hasrestart = $xrdp::service_hasrestart,
){
	service { 'xrdp':
		provider   => $service_provider,
		ensure     => $service_ensure,
		name       => $service_name,
		hasstatus  => $service_hasstatus,
		hasrestart => $service_hasrestart,

	}

        exec { 'enable xrdp':
                path    => '/usr/bin:/usr/sbin:/bin',
                command => "systemctl enable xrdp ",
                unless  => "systemctl status xrdp | grep enable",
       }
}
