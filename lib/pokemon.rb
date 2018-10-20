class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize(input)
    @id = input[id]
    @name = input[name]
    @type = input[type]
    @db = input[db]
  end

  def self.all
    @@all
  end

def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
end

def self.find(id, db)
     pokemonInfo = {}
     type = db.execute("SELECT type FROM POKEMON WHERE id = #{id}").flatten[0]
     name = db.execute("SELECT name FROM POKEMON WHERE id = #{id}").flatten[0]
     pokemonInfo[id] = id
     pokemonInfo[name] = name
     pokemonInfo[type] = type
     pokemonInfo[db] = db
     #foundPokemon = Pokemon.new(pokemonInfo)
     foundPokemon = Pokemon.new(pokemonInfo)

    #Pokemon.new(pokemon)
end



end
