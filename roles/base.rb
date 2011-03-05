name 'base'
description 'Basic system setup role'
run_list [ 'recipe[apt]', 'recipe[openssh]', 'recipe[vim]', 'recipe[base]' ]
