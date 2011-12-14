class Person
  
  def initialize(name="")
    @name=name
  end  

  def name
    @name
  end

  def name=(name)
    @name=name
  end
end

person = Person.new("Ron")
p person.name
person.name="Max"
p person.name
