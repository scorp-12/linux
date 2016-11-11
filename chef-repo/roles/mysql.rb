name "mysql"
description "mysql webserver role"
run_list "recipe[mysql]", "role[base]"
