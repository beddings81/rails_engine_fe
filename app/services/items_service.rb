class ItemsService
  
  def self.get_all_items
    response = conn.get("items")
    data = JSON.parse(response.body, symbolize_names: true)
  end
  
  def self.get_one_item(id)
    response = conn.get("items/#{id}")
    data = JSON.parse(response.body, symbolize_names: true)
  end
  
  def self.conn
    Faraday.new("http://localhost:3000/api/v1/")
  end
end