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
    db.execute("SELECT id FROM POKEMON WHERE id = (?)",id)
    #Pokemon.new(pokemon)
end



end
