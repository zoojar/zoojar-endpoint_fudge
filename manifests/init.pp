class endpoint_fudge (
  $xinetd_script          = $endpoint_fudge::params::xinetd_script,
  $xinetd_script_template = $endpoint_fudge::params::xinetd_script_template,
  $xinetd_user            = $endpoint_fudge::params::xinetd_user,
  $xinetd_group           = $endpoint_fudge::params::xinetd_group,
  $xinetd_port            = $endpoint_fudge::params::xinetd_port,
  $console_api_port       = $endpoint_fudge::params::console_api_port,
  $console_api_endpoint   = $endpoint_fudge::params::console_api_endpoint,
) inherits endpoint_fudge::params {

  file { $xinetd_script:
    ensure  => file,
    owner   => $xinetd_user,
    group   => $xinetd_group,
    mode    => '700',
    content => template($xinetd_script_template),
  }

  xinetd::service { 'endpoint_fudge':
    port        => $xinetd_port,
    protocol    => 'tcp',
    server      => $xinetd_script,
    user        => $xinetd_user,
    group       => $xinetd_group,
    socket_type => 'stream',
    wait        => 'no',
    require     => File[ $xinetd_script ],
  }

}
