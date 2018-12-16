# Class: xrdp
# ===========================
#
# Full description of class xrdp here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'xrdp':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2018 Your name here, unless otherwise noted.
#
class xrdp(
	String $package_name        = $xrdp::params::package_name,
	String $package_ensure      = $xrdp::params::package_ensure,
	String $config_name         = $xrdp::params::config_name,
	String $config_file_mode    = $xrdp::params::config_file_mode,
	String $config_ls_title     = $xrdp::params::config_ls_title,
	String $service_ensure      = $xrdp::params::service_ensure,
	String $service_name        = $xrdp::params::service_name,
	Boolean $service_enable     = $xrdp::params::service_enable,
	Boolean $service_hasrestart = $xrdp::params::service_hasrestart,
	Boolean $service_hasstatus  = $xrdp::params::service_haststatus,
) inherits ::xrdp::params  {
	class {'xrdp::install': }
	-> class {'::xrdp::config':}
	-> class {'::xrdp::service':}

}
