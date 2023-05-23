require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe "バリデーション" do
    context "異常系" do
      it 'raty必須' do
        comment = build(:comment, raty: nil)
        comment.valid?
        expect(comment.errors[:raty]).to include('が入力されていません。')
      end

      it 'content必須' do
        comment = build(:comment, content: nil)
        comment.valid?  
        expect(comment.errors[:content]).to include('が入力されていません。')
      end
      
      it 'contentが250文字以上の時' do
        comment = build(:comment, content: 'a'*251)
        comment.valid?
        expect(comment.errors[:content]).to include('は250文字以下に設定して下さい。')
      end

      it 'contentが250文字以下の場合' do
        comment = build(:comment, content: 'a'*12)
        comment.valid?
        expect(comment.save).to eq true
      end
    end
  end 
end
