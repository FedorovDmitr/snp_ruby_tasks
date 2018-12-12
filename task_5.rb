=begin
Разработать метод date_in_future(integer), который вернет дату через integer дней. Если integer не является целым числом, то метод должен вывести текущую дату. Формат возвращаемой методом даты должен иметь следующий вид  '01-01-2001 22:33:44’. 
=end

def date_in_future(integer)
    require 'active_support/core_ext/time'
    time = Time.current
    if integer.class == Fixnum
        dif = time.advance(days: integer).strftime('%d-%m-%Y %H:%M:%S')
    else
        dif = time.strftime('%d-%m-%Y %H:%M:%S')         
    end
end

date_in_future([]) # => текущая дата
date_in_future(2) # => текущая дата + 2 дня