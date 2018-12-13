=begin
Разработайте функцию count_words(string), которая будет возвращать хэш со статистикой частоты употребления входящих в неё слов. 
=end

def count_words(string)
   words_array =  string.downcase.split(/[^[:word:]]+/)
   ret_hash = Hash.new(0)
   words_array.each { |word| ret_hash[word] += 1}
   ret_hash
end

# count_words("A man, a plan, a canal -- Panama") # => {'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1} 
# count_words("Doo bee doo bee doo")  # => {'doo' => 3, 'bee' => 2} 