class s3cmd::install {
  package { "s3cmd":
    ensure => installed
  }
}