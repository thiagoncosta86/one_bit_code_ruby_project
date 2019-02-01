lambda_name = lambda do |name|
	puts name.capitalize
end

def capitalize_name(lambda_param)
	lambda_param.call("thiago")
	lambda_param.call("costa")
end

capitalize_name(lambda_name)