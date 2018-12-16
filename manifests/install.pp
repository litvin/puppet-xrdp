class xrpd::install(
	String $package_name   = $xrdp::package_name,
	String $package_ensure = $xrdp::package_ensure,
){
	package { $pakage_name:
		ensure => $package_ensure 
	}
}
