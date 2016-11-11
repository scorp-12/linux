default["apache"]["sites"]["ded2"] = { "port" => 80, "domain" => "ddedukhov3.com"}
default["apache"]["sites"]["ded2b"] = { "port" => 80, "domain" => "ddedukhov3b.com"}
default["apache"]["sites"]["ded7"] = { "port" => 80, "domain" => "ddedukhov7.com"}
default["author"]["name"] = "ukrded"
case node["platform"]
when "centos"
	default["apache"]["package"]="httpd"
when "ubuntu"
	default["apache"]["package"] = "apache2"
end
