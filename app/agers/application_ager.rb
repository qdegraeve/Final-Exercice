# Base that that will act as a nil object. Will do nothing on item.
class ApplicationAger
  attr_reader :item

  def initialize(item)
    @item = item
  end

  def next_day
    @item.quality = [[next_day_quality, max_quality].min, 0].max
    decrease_price
    advance_sell_in
  end

  def decrease_price
    return if @item.sell_in > 0

    @item.price = (@item.price * 0.8).round(2)
  end

  def next_day_quality
    @item.quality
  end

  def advance_sell_in
    @item.sell_in -= 1
  end

  private

  def max_quality
    50
  end
end
