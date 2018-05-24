class Bfcy < ActiveRecord::Base
  validates_presence_of :qtum_address, :amount
  validates_uniqueness_of :qtum_address
end
