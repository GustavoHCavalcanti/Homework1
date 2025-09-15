def palindrome?(string)
  normalized = string.downcase.gsub(/\W/, '')
  normalized == normalized.reverse
end

puts palindrome?("A man, a plan, a canal -- Panama")  
puts palindrome?("Madam, I'm Adam!")                  
puts palindrome?("Abracadabra")                      

