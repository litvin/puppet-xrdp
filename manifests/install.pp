class xrdp::install(
	String $package_name   = $xrdp::package_name,
	String $package_ensure = $xrdp::package_ensure,
){
	package { $package_name:
		ensure => $package_ensure 
	}
}
