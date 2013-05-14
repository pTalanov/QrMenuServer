class Order < ActiveRecord::Base
  attr_accessible :items, :prices, :table_num
end
