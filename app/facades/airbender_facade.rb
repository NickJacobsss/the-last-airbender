class AirbenderFacade

  def self.get_characters_by_nation(nation)
    character_data = AirbenderService.all_characters(nation).first(25)

    character_data.map do |character_json|
      Airbender.new(character_json)
    end
  end

end
