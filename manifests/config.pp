class xrdp::config(
	String $config_name      = $xrdp::config_name,
	String $config_file_mode = $xrdp::config_file_mode,
#	String $config_ls_title  = $xrdp::config_ls_title,
){
  file { "/etc/${config_name}":
    ensure => file,
    owner  => 0,
    group  => 0,
    mode   => $config_file_mode,
    content => template("$module_name/xrdp.ini.erb")
  }
}
