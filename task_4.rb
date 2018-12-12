=begin
Дан массив целых чисел. Необходимо разработать метод sort_array(array),который поменяет местами минимальные и максимальные элементы массива, а также добавит в конец массива одно минимальное значение из него.
=end

def sort_array(array=[])
    output = Array.new
    x_max = array.max
    x_min = array.min
    array.each do |x|
        if x == x_max
            output.push(x_min)
        elsif x == x_min
            output.push(x_max)
        else output.push(x)
        end
    end
    output << x_min
    output.compact
end


# sort_array([]) # => []
# sort_array([2, 4, 6, 8]) # => [8, 4, 6, 2, 2]
# sort_array([1]) # => [1, 1]
# sort_array([1, 2, 1, 3]) # => [3, 2, 3, 1, 1]