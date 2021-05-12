class LegendaryAger < ApplicationAger
  def next_day_quality
    max_quality
  end

  def decrease_price; end

  private

  def max_quality
    80
  end
end
