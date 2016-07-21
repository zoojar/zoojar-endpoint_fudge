class endpoint_fudge::params {
    $console_api_endpoint   = 'classifier-api/v1/classes'
    $console_api_port       = '4433'
    $xinetd_port            = '4555'
    $xinetd_script          = '/opt/get_classes.sh'
    $xinetd_script_template = 'endpoint_fudge/api_wrapper.sh.erb'
    $xinetd_user            = 'root'
    $xinetd_group           = 'root'
    $xinetd_protocol        = 'tcp'
    $xinetd_socket_type     = 'stream'
    $xinetd_wait            = 'no'
}
