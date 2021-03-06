=begin
Необходимо разработать метод connect_hashes(hash1, hash2), который соединит два переданных хеша, значениями ключей в которых являются числа, и вернет новый хэш,полученный по следующим правилам:
• приоритетными являются ключи того хэша, сумма значений ключей которого больше (если суммы значений ключей будут равны, то второй хэш считается более приоритетным)
• ключи со значениями меньше 10 не должны попасть в финальный хэш
• получившийся хэш должен вернуться упорядоченным по значениям ключей в порядке возрастания.
=end

def connect_hashes(hash1, hash2)
    hash1_sum = hash1.inject(0) { |result, (key, value)| result + value}
    hash2_sum = hash2.inject(0) { |result, (key, value)| result + value}
    if hash2_sum >= hash1_sum
        hash_con = hash1.merge(hash2)
    else
        hash_con = hash2.merge(hash1)
    end
    array_con = hash_con.delete_if{ |key, value| value < 10}.sort_by{ |key, value| value}
    Hash[*array_con.flatten]

end

# connect_hashes({ a: 2, b: 12 }, { c: 11, e: 5 }) # => { c: 11, b: 12 } 
# connect_hashes({ a: 13, b: 9, d: 11 }, { c: 12, a: 15 }) # => { d: 11, c: 12, a: 13 } 
# connect_hashes({ a: 14, b: 12 }, { c: 11, a: 15 }) # => { c: 11, b: 12, a: 15 } 