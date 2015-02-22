class Manufacturer < ActiveRecord::Base
	has_many :products

  validates :name, presence: true, allow_blank: false
  validates :address, presence: true, allow_blank: false
  


end 









































end
