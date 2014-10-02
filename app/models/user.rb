class User < ActiveRecord::Base
  attr_accessible :email, :name
  has_many :auth_sessions
  validates :name, length: { maximum: 20 }
end
