class Claim < ActiveRecord::Base
  belongs_to :bfcy
  has_one :job

  validates_presence_of :email, :qtum_address, :message, :signature
end
