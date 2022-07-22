require 'rails_helper'

RSpec.describe Airbender do

  it "populates character info fields from JSON response" do
    character_data = {
      :_id=>"5cf5679a915ecad153ab68fd",
      :allies=>["Ozai", "Jimar"],
      :enemies=>["Earth Kingdom"],
      :name=>"Chan (Fire Nation admiral)",
      :affiliation=>"Fire Nation Navy",
      :photoUrl=> "https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819"
    }

    character = Airbender.new(character_data)
    expect(character).to be_a Airbender
    expect(character.name).to eq("Chan (Fire Nation admiral)")
    expect(character.allies).to eq(["Ozai", "Jimar"])
    expect(character.photo).to eq("https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819")
  end
end
