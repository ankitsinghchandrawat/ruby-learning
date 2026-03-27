# today we starts range

puts "numeric range"
puts (1..5).to_a     # inclusive range
puts
puts (1...5).to_a    # exclusive range
puts

puts "alphabetic range"
puts ('a'..'e').to_a   # inclusive range
puts
puts ('a'...'e').to_a  # exclusive range
puts
puts " string range"
puts ('cab'..'car').to_a
puts

words = 'cab'..'car'
puts words.include?('can')   
puts
puts words.min
puts
puts words.max
puts

# integrating through range
puts "integrating through range"
words.each do |word|
  puts  "Hello #{word} "
end
puts

# Range as interval
puts "Range as interval"
puts (1..10)  === 5
puts ('a'..'j') === 'c'
puts 

# range as condition
grade = 85
result = case grade
when 90..100 then
  puts "getting A grade"
when 80..89 then
  puts "getting B grade"
when 70..79 then
  puts "getting c grade"
else
  puts "you are not doing well"
end
puts result
#end here 
#now we ends range