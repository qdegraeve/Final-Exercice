class AgerFactory
  PRODUCTS = {
    "Aged Brie" => 'MenAger',
    "Sulfuras, Hand of Ragnaros" => 'LegendaryAger',
    "Backstage passes to a TAFKAL80ETC concert" => 'EventTicketAger',
    "Conjured Mana Cake" => 'ConjuredAger'
  }.freeze

  def self.build(product_name, item)
    PRODUCTS.fetch(product_name, 'ApplicationAger').constantize.new(item)
  end
end
