Puppet::Functions.create_function(:'simple_grid::docker_run') do
    dispatch :docker_run do
        param 'Hash', :augmented_site_level_config
        param 'Hash', :current_lightweight_component
        param 'String', :config_dir
    end
    def docker_run(augmented_site_level_config, current_lightweight_component, config_dir)
        docker_run = "docker run -v #{config_dir}:/config"
        return docker_run
    end
end