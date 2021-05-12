class MenAger < ApplicationAger
  def next_day_quality
    if @item.sell_in >= 0
      @item.quality + 2
    else
      @item.quality + 1
    end
  end
end
