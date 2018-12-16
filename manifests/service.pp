class xrdp::service(
	String $service_name        = $xrdp::service_name,
	String $service_ensure      = $xrdp::service_ensure,
	Boolean $service_enable     = $xrdp::service_enable,
	Boolean $service_hasstatus  = $xrdp::service_hasstatus,
	Boolean $service_hasrestart = $xrdp::service_hasrestart,
){
	service { 'xrdp':
		ensure     => $service_ensuer,
		enable     => $service_enable,
		name       => $service_name,
		hasstatus  => $service_hasstatus,
		hasrestart => $service_hasrestart,
	}
}
