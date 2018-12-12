=begin
Разработайте метод palindrome?(string),который будет определять,является ли строка string палиндром (строкой, которая читается одинаково как с начала так и с конца), при условии игнорирования пробелов, знаков препинания и регистра. 
=end

def palindrome?(string)
    if string.class == String
        string_red = string.downcase.gsub(/[^\w]/, "")    
        string_red == string_red.reverse
    elsif string.class == Fixnum
        string.to_s == string.to_s.reverse
    else 
        return false
    end
end


#  p palindrome?("A man, a plan, a canal -- Panama")
#  p palindrome?("Madam, I'm Adam!")
#  p palindrome?(333)
#  p palindrome?(nil)
#  p palindrome?("Abracadabra")

