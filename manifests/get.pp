define s3cmd::get(
    $bucket,
    $object,
    $local_file,
    $options,
    $timeout = 0,
    $tries = 1,
    $try_sleep = 1,
    $config_file = '/root/.s3cfg') {

  exec { "s3cmd-get-$bucket-$object":
    command   => "s3cmd -c $config_file $options get s3://$bucket/$object $local_file",
    path      => '/usr/bin/',
    logoutput => 'true',
    timeout   => $timeout,
    tries     => $tries,
    try_sleep => $try_sleep
  }
  
}
