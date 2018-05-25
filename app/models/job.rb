class Job < ActiveRecord::Base
  belongs_to :bfcy
  belongs_to :claim

  validates_presence_of :bfcy, :claim

  has_enumeration_for :status, :with => ::JobStatus, :create_helpers => true, :create_scopes => true

end
