require 'rails_helper'

RSpec.describe User, type: :model do
  describe "バリデーションテスト" do
    context "名前、メール、パスワードがあれば有効であること" do
      let!(:user) { User.new(name: 'Tomoya', email: 'tester@example.com', password:   "dottle-nouveau-pavilion-tights-furze") }
    
      it "is valid with a name, email, and password" do
        expect(user).to be_valid
      end
    end

    context "名前がなければ無効であること" do
      let!(:user) { User.new(name: nil) }
      
      it "is invalid without a name" do
        expect(user.valid?).to eq(false)
      end
    end

    context "メールアドレスがなければ無効であること" do
      let!(:user) { User.new(email: nil) }
    
      it "is invalid without an email address" do
        expect(user.valid?).to eq(false)
      end
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

  describe "already_liked?" do
    let!(:user) { create(:user) }
    let!(:comment) { create(:comment) }
    context "正常系" do
      before { create(:like, user: user, comment: comment) }
      it "trueであること" do
        expect(user.already_liked?(comment)).to eq true
      end
    end
    context "異常系" do
      context "likeテーブルに対象のコメントデータがない場合" do
        let!(:other_comment) { create(:comment) }
        before { create(:like, user: user, comment: other_comment) }
        it "falseであること" do
          expect(user.already_liked?(comment)).to eq false
        end
      end
      context "ユーザーテーブルに対するlikeテーブルがない場合" do
        it "falseであること" do
          expect(user.already_liked?(comment)).to eq false
        end
      end
    end
  end
end
