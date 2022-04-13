class AddColumnAdminUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :admin_users, :email, :string
    add_column :admin_users, :encrypted_password, :string

    add_column :admin_users, :encrypted_password, :string
    add_column :admin_users, :reset_password_sent_at, :datetime

    add_column :admin_users, :remember_created_at, :datetime
    
  end
end