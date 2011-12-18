module My_attr
  def my_attr(*attrs)  
    attrs.each do |attr| 
      ivar = "@#{attr}"    
      define_method attr do
        instance_variable_get ivar
      end
      define_method "#{attr}=" do |value|
        instance_variable_set ivar, value
      end
    end
  end
end

class Person
  extend My_attr
  my_attr :name, :age
end

person = Person.new
person.name="Phil"
p person.name
person.age=45
p person.age
