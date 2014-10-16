class User < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  before_save { self.email = email.downcase }

  attr_accessible :email, :name, :email_confirmation
  has_many :auth_sessions
  validates :name, length: { in: 3..20 }
  validates :email, presence: true,
                    uniqueness: { case_sensitive: false },
                    format: { with: VALID_EMAIL_REGEX },
                    confirmation: true
  validates_presence_of :email_confirmation
end
