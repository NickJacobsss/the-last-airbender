require "rails_helper"

RSpec.describe "Airbender Facade" do

  it "gives array of character object that belong to nation" do
    characters = AirbenderFacade.get_characters_by_nation("FIRE+NATION")

    expect(characters).to be_a Array
    expect(characters).to be_all Airbender
  end

end 
