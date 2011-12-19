module Features
  def my_attr(attr)  
    ivar = "@#{attr}"
    define_method attr do
      instance_variable_get ivar
    end
    define_method "#{attr}=" do |value|
      instance_variable_set ivar, value
    end
  end
end

class Person
  extend Features
  my_attr :name
end

person = Person.new
person.name="Phil"
p person.name
p Person.class


