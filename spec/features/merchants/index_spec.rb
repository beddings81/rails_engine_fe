require 'rails_helper'

RSpec.describe 'merchants index' do
  it 'can get all merchants', :vcr do

    visit merchants_path

    expect(page).to have_content("All Merchants")

    within("#merchant_1") do
      expect(page).to have_link("Schroeder-Jerde")
      click_link("Schroeder-Jerde")

      expect(current_path).to eq(merchant_path(1))
    end
  end
end