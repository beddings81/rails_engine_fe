class MerchantsFacade
  def self.all_merchants
    merchant_response = MerchantsService.get_merchants
    merchant_response[:data].map do |merchant|
      Merchant.new(merchant)
    end
  end

  def self.one_merchant(id)
    data = MerchantsService.get_one_merchant(id)[:data]
    Merchant.new(data)
  end

  def self.merchant_items(id)
    items_response = MerchantsService.get_merchant_items(id)
    items_response[:data].map do |item|
      Item.new(item)
    end
  end
end