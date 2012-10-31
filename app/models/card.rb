class Card < ActiveRecord::Base
  belongs_to :user
  belongs_to :type

  attr_accessible :name, :type_id, :user_id, :object_id 

  validates :name, :presence => true
  validates :type_id, :presence => true
  validates :user_id, :presence => true
  validates :object_id, :presence => true
end
