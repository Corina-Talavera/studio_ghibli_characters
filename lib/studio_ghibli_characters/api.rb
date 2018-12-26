class StudioGhibliCharacters::API
  attr_accessor :character_hash, :characters
  
  def self.character_list
    characters = RestClient.get('https://ghibliapi.herokuapp.com/people')
    @character_hash = JSON.parse(characters)
    @character_hash["results"].each do |chars|
          StudioGhibliCharacters::Characters.new_from_json(chars)
    end
  end
end
