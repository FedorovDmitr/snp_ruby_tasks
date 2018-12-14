=begin
Реализуйте класс Dessert c геттерами и сеттерами для полей класса name и calories, конструктором, принимающим на вход name и calories, а также двумя методами healthy? (возвращает true при условии калорийности десерта менее 200) и delicious? (возвращает true для всех десертов).
=end

class Dessert
    attr_accessor :name, :calories

    def initialize (name, calories)
        @name = name
        @calories = calories
    end

    def healthy?
        calories < 200
    end

    def delicious?
        true
    end
end