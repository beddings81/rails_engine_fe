require 'rails_helper'

RSpec.describe 'merchants show' do
  it 'can get all merchants', :vcr do

    visit merchant_path(1)

    expect(page).to have_content("Schroeder-Jerde")

    within("#items") do
      expect(page).to have_link("Item Nemo Facere")
      expect(page).to have_link("Item Expedita Aliquam")
      expect(page).to have_link("Item Provident At")
    end
  end
end