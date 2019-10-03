def ask_first_name ()
first_name = gets.chomp
return first_name
end

def say_hello(first_name)
	return "Bonjour #{first_name}"
end

puts say_hello(ask_first_name)
