require 'rails_helper'

RSpec.describe User, type: :model do
  # 名前、メール、パスワードがあれば有効であること
  it "is valid with a name, email, and password" do
    user = User.new(
      name:  "Tomoya",
      email:      "tester@example.com",
      password:   "dottle-nouveau-pavilion-tights-furze",
    )
    expect(user).to be_valid
  end
  # 名前がなければ無効であること
  it "is invalid without a name" do
    @user = User.new(name: nil)
    expect(@user.valid?).to eq(false)
  end
  # メールアドレスがなければ無効であること
  it "is invalid without an email address" do
    @user = User.new(email: nil)
    expect(@user.valid?).to eq(false)
  end
  # 重複したメールアドレスなら無効であること
  it "is invalid with a duplicate email address" do
    User.create(
      name: "John",
      email:      "test@example.com",
      password:   "i-am-john"
    )
    @user = User.new( 
      name: "Peter", 
      email:      "test@example.com",
      password:   "i-am-peter"
    ) 
    @user.valid?
    expect(@user.valid?).to eq(false)
  end
end
