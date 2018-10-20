class Pokemon
  attr_accessor :id, :name, :type, :db, :hp
  @@all = []

  def initialize(input)
    @id = input[:id]
    @name = input[:name]
    @type = input[:type]
    @db = input[:db]
    @hp = 60
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
     info = {id: id, name: name, type: type, db: db, hp: 60}
     foundPokemon = Pokemon.new(info)
end



end
