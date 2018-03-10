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
    db.execute("SELECT name, type FROM pokemon WHERE id = ?", index)
  end

end
