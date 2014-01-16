class Element < ActiveRecord::Base
  attr_accessible :description, :name, :elementType
  has_many :attributs
end
