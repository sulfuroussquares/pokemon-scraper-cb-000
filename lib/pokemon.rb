class Pokemon
  attr_accessor :id, :name, :type, :db
  @@all = []

  def initialize(input)
    @id = input[:id]
    @name = input[:name]
    @type = input[:type]
    @db = input[:db]
    @@all << self
    input
  end

  def self.all
    @@all
  end

def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
end

def self.find(id, db)
     pokemonInfo = {}
     type = db.execute("SELECT type FROM pokemon WHERE id = #{id}").flatten[0]
     name = db.execute("SELECT name FROM pokemon WHERE id = #{id}").flatten[0]
     newHash = {id: id, name: name, type: type, db: db}
     #foundPokemon = Pokemon.new(pokemonInfo)
     foundPokemon = Pokemon.new(pokemonInfo)

    #Pokemon.new(pokemon)
end



end
