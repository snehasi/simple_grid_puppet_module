class simple_grid::pre_conf(
  $config_dir,
  $yaml_compiler_dir_name,
  $yaml_compiler_repo_url,
  $yaml_compiler_revision
) {
  notify{"Running State: Pre Conf":}
  #create config directory
  file {"main config directory":
    ensure => directory,
    path   => "${config_dir}", 
  }
  #site-level-config-file
  #download simple grid yaml compiler
  vcsrepo { "${config_dir}/${yaml_compiler_dir_name}":
    ensure   => present,
    revision => $yaml_compiler_revision,
    source   => $yaml_compiler_repo_url,
  }
}
