require 'rails_helper'

RSpec.describe 'item show' do
  it 'can get one item', :vcr do

    visit item_path(4)

    expect(page).to have_content("Item Nemo Facere")

    expect(page).to have_content("Unit Price: 42.91")
    expect(page).to have_content("Description: Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.")

  end
end