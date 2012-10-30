class Card < ActiveRecord::Base
  belongs_to :user
  belongs_to :type

  attr_accessible :name, :type_id, :user_id, :object_id 
end
