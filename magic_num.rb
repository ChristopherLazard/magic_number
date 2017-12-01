require 'numbers_and_words'

def menu
  puts "Enter a positive number!"
  @num = gets.strip.downcase
  if @num == 'quit'
    exit
  else
    @num = @num.to_i
    calculation  
  end
end

def calculation
   if @num != 4
    words = I18n.with_locale(:en) { @num.to_words }
  puts "#{@num} is #{words.length}"
  @num = words.length
  calculation
  else
  puts 'And 4 is the magic number!'
  menu
  end
end

  menu