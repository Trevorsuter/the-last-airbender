class Character
  attr_reader :name,
              :allies,
              :enemies,
              :affiliation,
              :photo
  
  def initialize(data)
    @name = data[:name]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @affiliation = data[:affiliation]
    @photo = data[:photo]
  end
end