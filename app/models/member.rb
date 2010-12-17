class Member < ActiveRecord::Base
  validates :first_name, :last_name, :position, :description, :presence => true
  validates_uniqueness_of :first_name, :scope => [:last_name]
end
