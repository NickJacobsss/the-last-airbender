require 'rails_helper'

RSpec.describe "Airbender Service" do

  it "returns all characters from a given nation" do
    parsed_json = AirbenderService.all_characters('FIRE+NATION')
    expect(parsed_json).to be_a Array
    character = parsed_json.first

    expect(character).to include :allies, :enemies, :name, :affiliation
  end

end
