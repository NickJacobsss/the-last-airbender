class Airbender
  attr_reader :name, :data, :photo, :allies

  def initialize(character_data)
    @data = character_data
    @name = character_data[:name]
    @photo = character_data[:photoUrl]
    @allies = character_data[:allies]
  end

  # def allies
  #   @data[:allies].map do |ally|
  #     ally[:name]
  #   end
  # end
end
