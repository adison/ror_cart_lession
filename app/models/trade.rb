class Trade < ActiveRecord::Base
  belongs_to :order
  serialize :params, JSON

  after_initialize :generate_trade_number, if: :new_record?


  def generate_trade_number
 #  	num = ''
 #  	loop do
 #  		num = SecureRandom.hex(3)
 #  		break unless Trade.exists? trade_number: num
 #    	self.trade_number = num
	# end 
	 self.trade_number = SecureRandom.hex(3)
  end
end
