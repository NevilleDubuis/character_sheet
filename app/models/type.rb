class Type < ActiveRecord::Base
  has_many :cards

  attr_accessible :name, :classname

  validates :name, :presence => true
  validates :classname, :presence => true
end
