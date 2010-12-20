class Member < ActiveRecord::Base
  validates :position, :description, :presence => true
  validates_format_of :first_name, :with => /^\D+$/,
  :message => "can contain only letters"
end
