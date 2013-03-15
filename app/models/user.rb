class User < ActiveRecord::Base
  attr_accessible :account_id, :name, :redirect_address

  belongs_to :account

end
