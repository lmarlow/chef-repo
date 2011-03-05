name 'base'
description 'Basic system setup role'
run_list %w[
             recipe[apt]
             recipe[ntp]
             recipe[openssh]
             recipe[vim]
             recipe[system]
           ]
