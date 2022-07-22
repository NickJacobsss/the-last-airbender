require "rails_helper"

RSpec.describe "Search Page" do

  it "displays up to 25 characters with their info" do
    visit root_path
    page.select("Fire Nation")
    click_button("Search For Members")
    expect(current_path).to eq("/search")

    expect(page).to have_content("Total Members of this Tribe 20")

    expect(page).to have_content("Name: Chan (Fire Nation admiral)")
    expect(page).to have_content("Affiliation: Fire Nation Navy")
    expect(page).to have_content("Allies: Ozai")
    expect(page).to have_content("Enemies: Earth Kingdom")
  end
end
