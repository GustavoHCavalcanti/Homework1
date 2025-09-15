def combine_anagrams(words)
  groups = Hash.new { |h, k| h[k] = [] }

  words.each do |word|
    key = word.downcase.chars.sort.join
    groups[key] << word
  end

  groups.values
end

# Teste 
input = ['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream']

puts combine_anagrams(input).inspect

