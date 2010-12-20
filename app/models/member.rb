class Member < ActiveRecord::Base
  validates :first_name, :last_name, :position, :description, :presence => true
  validates_format_of :first_name, :last_name, :with => /^\D+$/,
  :message => "can contain only letters"
end
