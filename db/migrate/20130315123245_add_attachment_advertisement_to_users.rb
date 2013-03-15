class AddAttachmentAdvertisementToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :advertisement
    end
  end

  def self.down
    drop_attached_file :users, :advertisement
  end
end
