class User < ActiveRecord::Base
  has_many :posts
  validates_presence_of :name,:lastname
end
