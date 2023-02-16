require 'rails_helper'

RSpec.describe MerchantsService do
  it 'can get all merchants', :vcr do

    response = MerchantsService.get_merchants

    expect(response).to have_key(:data)
    expect(response[:data]).to be_a(Array)
    expect(response[:data][0]).to have_key(:id)
    expect(response[:data][0]).to have_key(:type)
    expect(response[:data][0]).to have_key(:attributes)
    expect(response[:data][0][:attributes]).to have_key(:name)
  end
  
  it 'can get one merchant', :vcr do
    response = MerchantsService.get_one_merchant(1)
    
    expect(response).to have_key(:data)
    expect(response[:data]).to be_a(Hash)
    expect(response[:data]).to have_key(:id)
    expect(response[:data]).to have_key(:type)
    expect(response[:data]).to have_key(:attributes)
    expect(response[:data][:attributes]).to have_key(:name)
  end

  it 'can get a merchants items', :vcr do
    response = MerchantsService.get_merchant_items(1)
    
    expect(response).to have_key(:data)
    expect(response[:data]).to be_a(Array)
    expect(response[:data][0]).to have_key(:attributes)
    expect(response[:data][0][:attributes]).to have_key(:name)
    expect(response[:data][0][:attributes]).to have_key(:unit_price)
    expect(response[:data][0][:attributes]).to have_key(:merchant_id)
    expect(response[:data][0][:attributes]).to have_key(:description)
  end
end