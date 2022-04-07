class AddpasswordDigestToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :password_digest, :string
  end
end



# 20220407060956  Addpassword digest to users
# rm db/migrate/20220407060956_add_password digest_to_users.rb