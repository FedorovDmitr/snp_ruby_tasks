=begin
Написать метод multiply_numbers(inputs), который вернет произведение цифр, входящих в inputs.
=end

def multiply_numbers(inputs = 'a' )
    inputs_array = Array.new
    if
        inputs.class == String
        str = inputs.gsub(/[^\d]/, "")    
    elsif 
        inputs.class == Fixnum
        str = inputs.to_s
    elsif 
        inputs.class == Float
        str = inputs.to_s.gsub(/[^\d]/, "") 
    elsif 
        inputs.class == Array
        str = inputs.join.gsub(/[^\d]/, "") 
    else
        return nil 
    end
    array = str.split("")
    array.each {|x| inputs_array.push(x.to_i)}
    inputs_array.inject {|result, number| result * number}
    
end

# multiply_numbers() # => nil
# multiply_numbers('ss') # => nil
# multiply_numbers('1234') # => 24 
# multiply_numbers('sssdd34') # => 12
# multiply_numbers(2.3) # => 6 
# multiply_numbers([5, 6, 4]) # => 120