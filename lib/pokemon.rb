class Pokemon

  attr_accessor :name, :type, :db, :hp, :id

  def initialize(id:, name:, type:, db:)
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)

  end

  def self.find

  end

end
