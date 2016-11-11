name "base"
description "base webserver role"
run_list "recipe[chef-client::delete_validation]", "recipe[chef-client::cron]", "recipe[localusers]", "recipe[chef-client]"
