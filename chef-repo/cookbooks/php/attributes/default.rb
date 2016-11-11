case node["platform"]
when "ubuntu"
	default["php"]["package"] = "php5"
when "centos"
	default["php"]["package"] = "php"
end
