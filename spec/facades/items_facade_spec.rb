require 'rails_helper'

RSpec.describe ItemsFacade do
  it 'can get make merchant objects', :vcr do
    items = ItemsFacade.all_items

    expect(items[0]).to be_a(Item)
    expect(items[5]).to be_a(Item)
  end

  it 'can make a single item object', :vcr do
    item = ItemsFacade.one_item(4)

    expect(item).to be_a(Item)
  end
end