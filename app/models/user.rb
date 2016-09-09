class User < ActiveRecord::Base
  validates_presence_of :email, :name
  
  has_many :comments
end
