name "dev"
description "this is dev env"
cookbook "apache", "= 0.1.5"
override_attributes({

	"author" => { 
		"name" => "dev supermegaauthor"
	}
}
)
