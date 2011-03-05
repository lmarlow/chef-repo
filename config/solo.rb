repo_root  = File.expand_path(File.join(File.dirname(__FILE__), '..'))
cookbook_path [ File.join(repo_root, 'cookbooks'), File.join(repo_root, 'site-cookbooks') ]
role_path File.join(repo_root, 'roles')

log_level                :info
log_location             STDOUT
node_name                'lmarlow'
#client_key               File.join(repo_root, '.chef', 'client.pem')
client_key               nil
#validation_client_name   'chef-validator'
#validation_key           '/etc/chef/validation.pem'
#chef_server_url          'http://localhost:4000'
cache_type               'BasicFile'
cache_options( :path => File.join(repo_root, '.chef', 'checksums') )
