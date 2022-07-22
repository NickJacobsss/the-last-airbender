require "rails_helper"

RSpec.describe "Landing Page" do

  it "can select a nation from the landing page" do
    visit root_path
    page.select("Fire Nation")
    click_button("Search For Members")
    expect(current_path).to eq("/search")
  end

end
