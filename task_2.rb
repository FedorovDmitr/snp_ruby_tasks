=begin
Дан массив array и числовой диапазон range. Разработайте метод coincidence(array, range) для определения элементов из массива array, значения которых входят в указанный диапазон. Если не передан хотя бы один из параметров, то должен вернуться пустой массив.
=end

def coincidence (array=[], range=())
    output = Array.new
    if range.nil?
        return output
    else    
        array.select {|i| range.include? (i)}
    end
end


coincidence([1, 2, 3, 4, 5], (3..5))
coincidence()
coincidence([nil, 1, 'foo', 4, 2, 2.5], (1..3))
