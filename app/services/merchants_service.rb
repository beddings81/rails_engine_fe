class MerchantsService

  def self.get_merchants
    response = conn.get('merchants')
    data = JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_one_merchant(id)
    response = conn.get("merchants/#{id}")
    data = JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_merchant_items(id)
    response = conn.get("merchants/#{id}/items")
    data = JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new("http://localhost:3000/api/v1/")
  end
end