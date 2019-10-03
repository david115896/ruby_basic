$num=0
$pos=0
$tours=0
$stat=0
$table_stat=[]
def random
	#nex=gets.chomp	
	$num=rand(1..6)
	puts"Vous avez lance le de, et obtenu #{$num}"
end

def position(num)
$tours=$tours+1
if num==5 || num==6
	$pos=$pos+1
	puts "Votre nouvelle position est #{$pos}"
elsif num==1 && $pos!=0
	$pos=$pos-1 
        puts "Votre nouvelle position est #{$pos}"
else	
	puts"Dommage vous n'avez pas avance, vous reste a la position #{$pos}"
end

if 	$pos==10 
	puts "Bravo, vous etes arrive en haut de l'escalier"
end
end


def statistic
	sum=0
	$table_stat.each{|x| sum=sum+x}
	return  "La moyenne de 100 partie est #{sum/100} tours pour arriver en haut de l'escalier"
		
end
def perform
	100.times do 	
		while $pos!=10
		random
		position($num)
		
		end
	$table_stat << $tours
	$tours=0
	$pos=0
	end
	puts statistic
	#puts $table_stat.size
end
perform
