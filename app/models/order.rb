class Order < ActiveRecord::Base
	has_many :line_items
	has_many : products, through: :line_items
  def total
    line_items.to_a.sum(&:subtotal)
    # line_items.to_a.sum{|i| i.subtotal} # 同意寫法
  end
end
