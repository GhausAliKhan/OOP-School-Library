class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  # Public method to check if the person can use services
  def can_use_services?
    of_age? || @parent_permission
  end

  private

  # Private method to check if the person is of age
  def of_age?
    @age >= 18
  end
end
