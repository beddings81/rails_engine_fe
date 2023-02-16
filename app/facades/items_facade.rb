class ItemsFacade
  def self.all_items
    items_response = ItemsService.get_all_items
    items_response[:data].map do |item|
      Item.new(item)
    end
  end

  def self.one_item(id)
    item_data = ItemsService.get_one_item(id)[:data]
    Item.new(item_data)
  end
end