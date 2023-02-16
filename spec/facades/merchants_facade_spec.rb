require 'rails_helper'

RSpec.describe MerchantsFacade do
  it 'can get make merchant objects', :vcr do
    merchants = MerchantsFacade.all_merchants

    expect(merchants[0]).to be_a(Merchant)
    expect(merchants[5]).to be_a(Merchant)
  end

  it 'can make a single merchant object', :vcr do
    merchant = MerchantsFacade.one_merchant(1)

    expect(merchant).to be_a(Merchant)

  end
end