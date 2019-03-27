require_relative('../db/sqlRunner')

class Owner
  attr_reader :id
  attr_accessor :name, :tel, :resType, :garden, :otherPets

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
    @tel = options['tel']
    @resType = options['resType']
    @garden = options['garden']
    @otherPets = options['otherPets']
  end


  #save owner to db
  def save() 
    sql = "INSERT INTO owners (name, tel, resType, garden, otherPets) VALUES ($1, $2, $3, $4, $5) RETURNING *"
    values = [@name, @tel, @resType, @garden, @otherPets]
    owner_data = SqlRunner.run(sql, values)
    @id = owner_data.first()['id'].to_i
  end


  #all owners
  def self.all() 
    sql = "SELECT * FROM owners"
    owners = SqlRunner.run( sql )
    result = owners.map { |owner| Owner.new( owner ) }
    return result
  end


  #find specific owner with id
  def self.find(id) 
    sql = "SELECT * FROM owners WHERE id = $1"
    values = [id]
    owner = SqlRunner.run( sql, values )
    result = Owner.new( owner.first )
    return result
  end


  #delete all owners
  def self.delete_all() 
    sql = "DELETE FROM owners"
    SqlRunner.run(sql)
  end



end
