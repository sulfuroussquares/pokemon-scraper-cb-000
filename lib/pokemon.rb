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
  #  tempObj = []
     db.execute("SELECT * FROM POKEMON WHERE id = #{id}").flatten[0]

    #Pokemon.new(pokemon)
end



end
