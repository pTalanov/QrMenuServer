class Order < ActiveRecord::Base
  attr_accessible :items, :prices, :table_num

  def get_items
    if items.nil?
      return []
    end
    items.split(',').map do |s|
      s.strip
    end
  end


  def get_prices
    if prices.nil?
      return []
    end
    prices.split(',').map do |s|
      s.strip.to_f
    end
  end

  def total
    sum = 0
    get_prices.each do |p|
      sum += p
    end
    '%.2f' % sum
  end
end
