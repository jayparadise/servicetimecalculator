puts "Previous years of service time?"
	previous_years = gets.chomp

puts "Previous days of service time?"
	previous_days = gets.chomp

puts "Days into the season at callup?"
	current = gets.chomp

#proj_current_days = 183 - current.to_i
if 183 - current.to_i >= 173
	proj_current_days = 172
else
	proj_current_days = 183 - current.to_i
end

total_days = previous_days.to_i + proj_current_days.to_i
#new_days = total_days % 172
#days = new_days.to_i % 172

days = total_days.to_i % 172
years = (total_days.to_i / 172) + previous_years.to_i

if years == 1
	service = "The players projected service time at the end of the season will be #{years} year and #{days} days"
else
	service = "The players projected service time at the end of the season will be #{years} years and #{days} days"
end

puts service