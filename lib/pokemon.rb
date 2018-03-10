class Pokemon

  attr_accessor :name, :type, :db, :hp, :id

  def initialize(id:, name:, type:, db:)
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", [name, type])
  end

  def self.find(index, db)
    pk_array = db.execute("SELECT * FROM pokemon WHERE id = ?", index)
    Pokemon.new(id: pk_array[0], name: pk_array[1], type: pk_array[2], db: db)
  end

end
