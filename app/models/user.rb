class User < ActiveRecord::Base
  attr_accessible :account_id, :name, :redirect_address, :advertisement

  belongs_to :account
  
  has_attached_file :advertisement

end
