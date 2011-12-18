module Features
  def my_attr()

  end
end

class Person
  extend Features
  my_attr :name
end

person = Person.new
person.name="Phil"
p person.name
