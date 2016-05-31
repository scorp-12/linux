log_level                :info
log_location             STDOUT
node_name                'ded'
client_key               '~/chef-repo/.chef/ded.pem'
validation_client_name   'ded_org-validator'
validation_key           '~/chef-repo/.chef/ded_org_validator.pem'
chef_server_url          'https://ddedukhov1.mylabserver.com/organizations/ded_org'
syntax_check_cache_path  '~/chef-repo/.chef/syntax_check_cache'
cookbook_path [ '~/chef-repo/cookbooks' ]

