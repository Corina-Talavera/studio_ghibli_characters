class StudioGhibliCharacters::Characters
  attr_reader :character_name, :gender
  @@all = []

  def self.new_from_json(char_info)
    self.new(
      char_info["name"],
      char_info["gender"],
    )
  end

  def initialize(character_name = nil, gender = nil)
    @character_name = character_name
    @gender = gender
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find(char)
    self.all[char-1]
  end

  def gender
    @gender
  end
end
