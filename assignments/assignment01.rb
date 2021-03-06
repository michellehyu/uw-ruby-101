# ========================================================================================
#  Sample Problem - `number_to_string`
def number_to_string(n, lang)
  lang_digit_strings = {
    en: %w(zero one two three four five six seven eight nine),
    de: %w(null eins zwei drei vier fünf sechs sieben acht neun),
    es: %w(cero uno dos tres cuatro cinco seis siete ocho nueve),
    fr: %w(zéro un deux trois quatre cinq six sept huit neuf)
  }
  
  digit_strings = lang_digit_strings[lang]
  return "no such language" if digit_strings.nil?

  s = n.to_s
  string_digits = s.split ""


  num_digits = []
  string_digits.each do |s|
    num_digits << s.to_i
  end
  
  result = ""
  num_digits.each do |digit|
    result << digit_strings[digit]
    result << " "
  end

  result.chop
end


# ========================================================================================
#  Problem 1 - `titleize`

# implement a method `titleize`

# it accepts a string
# and returns the same string with each word capitalized.
def titleize(s)
  #get array of words in the s
  words_in_s = s.split " "

  #make a string with all the words capitalized
  titlized_s = ""
  words_in_s.each do |w|
    titlized_s << w.capitalize
    titlized_s << " "
  end 

  #remove the last space
  titlized_s.chop!

  return titlized_s
end

# Your method should generate the following results:
titleize "hEllo WORLD"          #=> "Hello World"

titleize "gooDbye CRUel wORLD"  #=> "Goodbye Cruel World"


# ========================================================================================
#  Problem 2 - `my_reverse`

# Write your own implementation of `reverse` called `my_reverse`
# You may *not* use the built-in `reverse` method
def my_reverse(s)
  #put string into an array
  char_in_s = s.split(//)

  #reverse character array
  reverse_c = []
  i = 1
  char_in_s.each do |c|
    reverse_c[s.length-i] = c
    i = i+1
  end

  #append each character in the reverse order
  reverse_s = ""
  reverse_c.each do |c|
    reverse_s << c
  end

  return reverse_s

end

# Your method should generate the following results:
my_reverse "Hello World"          #=> "dlroW olleH"

my_reverse "Goodbye Cruel World"  #=> "dlroW leurC eybdooG"


# ========================================================================================
#  Problem 3 - `palindrome?`

# Write a method `palindrome?`
# that determines whether a string is a palindrome
def palindrome?(s)
  #make all the letters lower case
  original = s.downcase

  #remove all non alphanumeric characters
  original.gsub!(/[^\p{Alnum}-]/, '')

  #save a reverse copy
  reverse = original.reverse

  #compare and return results
  return reverse == original ? true : false 
end

# Your method should generate the following results:
palindrome? "abba"                             #=> true
palindrome? "aBbA"                             #=> true
palindrome? "abb"                              #=> false

palindrome? "Able was I ere I saw elba"        #=> true
palindrome? "A man, a plan, a canal, Panama"   #=> true
