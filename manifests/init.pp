# == Class: emacs_orgmode_protocol_adobereader
#
# Full description of class emacs_orgmode_protocol_adobereader here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { 'emacs_orgmode_protocol_adobereader':
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Jim Hansson <jim.hansson@gmail.com>
#
# === Copyright
#
# Copyright 2015 Jim Hansson, unless otherwise noted.
#
class emacs_orgmode_protocol_adobereader($reader_version = 'Acrobat Reader DC') {
  file {
    "C://Program Files (x86)//Adobe//${reader_version}//Reader//Javascripts//org-capture.js":
      require => Package['adobereader', 'emacs'],
      source_permissions => ignore,
      ensure => file,
      source => 'puppet:///modules/emacs_orgmode_protocol_adobereader/org-capture.js';    
    "C://Program Files (x86)//Adobe//${reader_version}//Reader//Javascripts//org-store-link.js":
      require => Package['adobereader', 'emacs'],
      source_permissions => ignore,
      ensure => file,
      source => 'puppet:///modules/emacs_orgmode_protocol_adobereader/org-store-link.js';
  }

}
