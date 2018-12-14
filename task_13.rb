=begin
Разработайте метод palindrome?(string),который будет определять,является ли строка string палиндром (строкой, которая читается одинаково как с начала так и с конца), при условии игнорирования пробелов, знаков препинания и регистра. 
Адаптируйте ваше решение из Упражнения 1 так, чтобы вместо palindrome?("foo")вы могли его использовать как "foo".palindrome? # => false.
=end

class String

    def palindrome?()        
            string_red = self.downcase.gsub(/[^\w]/, "")    
            string_red == string_red.reverse
    end  
end