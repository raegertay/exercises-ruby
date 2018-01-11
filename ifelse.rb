loop do
  puts "Enter a number or press 'q' to quit"
  input = gets.chomp
  break if input == 'q'
  num = input.to_i
  if num > 0
    puts "The number #{num} is positive"
  elsif num < 0
    puts "The number #{num} is negative"
  else
    puts 'The number is zero'
  end
end
