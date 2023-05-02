require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe "バリデーション" do
    context "異常系" do
      # it 'image必須' do
      #   comment = build(:comment, images: nil)
      #   comment.valid?
      #   expect(comment.errors[:images]).to include('を入力してください')
      # end

      it 'content必須' do
        comment = build(:comment, content: nil)
        comment.valid?
        expect(comment.errors[:content]).to include('を入力してください')
      end
      
      it 'contentが250文字以上の時' do
        comment = build(:comment, content: 'a'*250)
        comment.valid?
        expect(comment.errors[:content]).to include('は250文字以内で入力してください')
      end

      # it 'contentが250文字以下の場合' do
      #   comment = build(:comment, content: 'a'*12)
      #   comment.valid?
      #   expect(comment.save).to eq true
      # end
    end
  end 
end
