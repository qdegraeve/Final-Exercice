class EventTicketAger < ApplicationAger
  def next_day_quality
    case @item.sell_in
    when (..0) then 0
    when (0...5) then @item.quality + 3
    when (6...10) then @item.quality + 2
    else @item.quality + 0
    end
  end
end
