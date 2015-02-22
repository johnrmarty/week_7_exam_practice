class Product < ActiveRecord::Base
	belongs_to :manufacturer

  validates :name, presence: true, allow_blank: false
  validates :description, presence: true, allow_blank: false
  

end
