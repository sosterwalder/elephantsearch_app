class Attribut < ActiveRecord::Base
  belongs_to :element
  attr_accessible :description, :name, :attributType
end
