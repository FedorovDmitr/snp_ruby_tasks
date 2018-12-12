=begin
Анаграмма — литературный приём, состоящий в перестановке букв или звуков определённого слова (или словосочетания), что в результате даёт другое слово или словосочетание. 
Разработайте метод combine_anagrams(words_array), который принимает на вход массив слов и разбивает их в группы по анаграммам, регистр букв не имеет значения при определении анаграмм.  
=end

def combine_anagrams(words_array)
    my_hash = words_array.group_by { |word| word.chars.sort}
    return my_hash.values
end

# combine_anagrams(%w[cars for potatoes racs four scar creams scream] # =>  [["cars", "racs", "scar"], ["four"], ["for"], ["potatoes"], ["creams", "scream"]]