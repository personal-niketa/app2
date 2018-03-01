Rails.application.routes.draw do
	root :to => "demo#red"
	# match "demo/data" => "demo#data" , via: [ :get , :post ]
	match "demo/data" => "demo#data" , via: [ :get , :post ]
	get 'demo/home'
	get 'demo/about'
	get 'demo/products'
	get 'demo/services'
	get 'demo/design'
	get 'demo/contact'
	get 'demo/detail'
	get 'demo/class_registration'
	get 'demo/ajax_demo'
	match "demo/air_ticket_details" => "demo#air_ticket_details" , via: [ :get , :post ]
	match "demo/cls_details" => "demo#cls_details" , via: [ :get , :post ]
	match "demo/plane_air_ticketing" => "demo#{}plane_air_ticketing" , via: [ :get , :post ]
end

