$n=0
$a=0
def full_pyramid
puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu?, choisis un nombre entre 1 et 25"
print "> "
$n = gets.chomp.to_i
$a = $n - 1
if ($n <= 0 || $n >25)
        puts "Chosis un nombre entre 1 et 25"
else
        if ($n.even?)
                puts "Bien essayer"
                else 1.upto($n).each{|y| puts ("#" * y + "#" * (y - 1)).rjust($a + y)}
                end
end

end

def wtf_pyramid
if ($n > 0 && $n <= 25)

        if ($n.even?)


        else ($n-1).downto(1).each{|y| puts ("#" * y + "#" * (y - 1)).rjust($a + y)}
        end

end

end

def perform

        full_pyramid
        wtf_pyramid
end

perform
