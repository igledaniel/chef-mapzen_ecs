line = 'ECS_AVAILABLE_LOGGING_DRIVERS=["fluentd"]'
file = Chef::Util::FileEdit.new('/etc/ecs/ecs.config')
file.insert_line_if_no_match(/ECS_AVAILABLE_LOGGING_DRIVERS/, line)
file.write_file

include_recipe "mapzen_ecs::restart_ecs_agent"
