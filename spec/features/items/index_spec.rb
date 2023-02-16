require 'rails_helper'

RSpec.describe 'items index' do
  it 'can get all items', :vcr do

    visit items_path

    expect(page).to have_content("All Items")

    within("#item_4") do
      expect(page).to have_link("Item Nemo Facere")
      click_link("Item Nemo Facere")

      expect(current_path).to eq(item_path(4))
    end
  end
end