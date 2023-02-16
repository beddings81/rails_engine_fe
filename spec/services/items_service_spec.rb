require 'rails_helper'

RSpec.describe ItemsService do
  it 'can get all items', :vcr do
    response = ItemsService.get_all_items

    expect(response).to have_key(:data)
    expect(response[:data]).to be_a(Array)
    expect(response[:data][0]).to have_key(:id)
    expect(response[:data][0]).to have_key(:type)
    expect(response[:data][0]).to have_key(:attributes)
    expect(response[:data][0][:attributes]).to have_key(:name)
    expect(response[:data][0][:attributes]).to have_key(:unit_price)
    expect(response[:data][0][:attributes]).to have_key(:description)
    expect(response[:data][0][:attributes]).to have_key(:merchant_id)
  end
  
  it 'can get one merchant', :vcr do
    response = ItemsService.get_one_item(4)
    expect(response).to have_key(:data)
    expect(response[:data]).to be_a(Hash)
    expect(response[:data]).to have_key(:id)
    expect(response[:data]).to have_key(:type)
    expect(response[:data]).to have_key(:attributes)
    expect(response[:data][:attributes]).to have_key(:name)
    expect(response[:data][:attributes]).to have_key(:unit_price)
    expect(response[:data][:attributes]).to have_key(:merchant_id)
    expect(response[:data][:attributes]).to have_key(:description)
  end
end