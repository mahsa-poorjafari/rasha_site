class Picture < ActiveRecord::Base
  attr_accessible :description
  belongs_to :product
  belongs_to :service
end
