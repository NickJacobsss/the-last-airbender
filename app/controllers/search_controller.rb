class SearchController < ApplicationController

  def index
    if params[:nation] == "fire_nation"
      @characters = AirbenderFacade.get_characters_by_nation("FIRE+NATION")
    elsif params[:nation] == "water_tribes"
      @characters = AirbenderFacade.get_characters_by_nation("WATER+TRIBES")
    elsif params[:nation] == "air_nomads"
      @characters = AirbenderFacade.get_characters_by_nation("AIR+NOMADS")
    elsif params[:nation] == "earth_kingdom"
      @characters = AirbenderFacade.get_characters_by_nation("EARTH+KINGDOM")
    end
  end

end
