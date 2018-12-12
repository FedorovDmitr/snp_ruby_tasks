=begin
Дан массив элементов произвольной природы. Необходимо разработать метод max_odd(array), который определит максимальный нечетный элемент. Вернуть nil, если таких элементов нет в переданном массиве.
=end

def max_odd(array=[])
    array_sort = Array.new
    array.flatten.each do |x|
        if x.class == Fixnum
            array_sort.push(x)
        elsif x.class == Float
            array_sort.push(x.to_i)
        else
        end
    end
   array_sort.find_all{|elem| elem.odd?}.max
    #array_odd.max
end


max_odd([1, 2, 3, 4, 4])
max_odd([21.0, 2, 3, 4, 4])
max_odd(['ololo', 2, 3, 4, [1, 2], nil])
max_odd(%w[ololo fufufu])
max_odd([2, 2, 4])