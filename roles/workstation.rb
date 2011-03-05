name 'workstation'
description 'System setup for development'
run_list %w[
             role[base]
             recipe[git]
             recipe[system::development_environment]
           ]
