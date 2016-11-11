name "webserver"
description "apache webserver role"
run_list "recipe[apache]", "role[base]"
