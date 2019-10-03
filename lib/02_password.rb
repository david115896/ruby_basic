$password=""
def signup
	puts "Bonjour, merci de saisir un mot-de-passe :"
       	print ">"	
	$password=gets.chomp

end

def login
        puts "Merci de saisir le  mot-de-passe :"
	print ">"
	try_passwrod=gets.chomp
	while try_passwrod != $password
		puts"Mauvais mot_de_passe, veuillez recommencer :"
		puts ">"
		try_passwrod=gets.chomp
	end
end

def welcome_screen
	puts "Bienvenue dans votre zone secrete :"
	puts " Le super secret est : ..........................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................."
	puts "Ben rien en faite"
end


def perform
	signup
	login
	welcome_screen
end

perform
