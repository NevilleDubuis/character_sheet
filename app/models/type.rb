class Type < ActiveRecord::Base
  has_many :cards

  attr_accessible :id, :name
end
