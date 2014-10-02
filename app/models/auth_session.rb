class AuthSession < ActiveRecord::Base
  attr_accessible :active, :last_ip, :token, :user_agent, :user_id
  belongs_to :user
end
