require_relative('../db/sqlRunner')

class Animal

  attr_reader :id
  attr_accessor :name, :age, :breed, :adoptable, :admission, :notes, :image

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
    @age = options['age']
    @breed = options['breed']
    @adoptable = options['adoptable']
    @admission = options['admission']
    @notes = options['notes']
    @image = options['image']
  end


  #save animal to db
  def save() 
    sql = "INSERT INTO animals (name, age, breed, adoptable, admission, notes, image) VALUES ($1, $2, $3, $4, $5, $6, $7) RETURNING *"
    values = [@name, @age, @breed, @adoptable, @admission, @notes, @image]
    animal_data = SqlRunner.run(sql, values)
    @id = animal_data.first()['id'].to_i
  end


  #all animals
  def self.all() 
    sql = "SELECT * FROM animals"
    animals = SqlRunner.run( sql )
    result = animals.map { |animal| Animal.new( animal ) }
    return result
  end

  #find specific animal with id 
  def self.find( id ) 
    sql = "SELECT * FROM animals WHERE id = $1"
    values = [id]
    animal = SqlRunner.run( sql, values )
    result = Animal.new( animal.first )
    return result
  end


  #delete all animals
  def self.delete_all() 
    sql = "DELETE FROM animals"
    SqlRunner.run(sql)
  end



  

end
