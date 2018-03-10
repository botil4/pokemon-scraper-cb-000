class Pokemon

  attr_accessor :name, :type, :db, :hp

  def initialize(name:, type:, db:)
    @name = name
    @type = type
    @db = db
  end

  def self.save

  end

  def self.find

  end

end
