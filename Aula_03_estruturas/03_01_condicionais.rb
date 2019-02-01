#Condicinais
=begin
day = 'Sunday'
lunch = 'normal'

if day == 'Sunday'
	lunch = 'special'
end

puts "lunch is #{lunch} today"



day = 'Saturday'

if day == 'Sunday'
	lunch = 'special'
else
	lunch = 'normal'
end

puts "lunch is #{lunch} today"

=end

day = 'Holiday'

if day == 'Sunday'
	lunch = 'special'
elsif day == 'Holiday'
	lunch = 'late'	
else
	lunch = 'normal'
end

puts "lunch is #{lunch} today"


product_status = 'closed'

unless product_status == 'open'
	check_change = 'can'
else
	check_change = 'can not'
end

puts "You #{check_change} change the product."