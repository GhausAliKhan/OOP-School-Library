require_relative 'person'

# Class Teacher inherited from Person
class Teacher < Person
  attr_accessor :specialization

  def initialize(specialization, age, name = 'Unknown', id: nil, parent_permission: true)
    super(age, name, id: id, parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end

  def to_json(*_args)
    {
      'JSON_CLASS' => self.class.name,
      'name' => @name,
      'age' => @age,
      'id' => @id,
      'specialization' => @specialization,
      'parent_permission' => @parent_permission
    }.to_json
  end

  def self.new_from_json(json_hash)
    new(json_hash['specialization'], json_hash['age'], json_hash['name'],
        parent_permission: json_hash['parent_permission'])
  end
end
