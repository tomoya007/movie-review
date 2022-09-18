class CreateRelationships < ActiveRecord::Migration[6.0]
  def change
    create_table :relationships do |t|
      t.references :user, null: false, foreign_key: true
      t.references :follow, null: false, foreign_key: { to_table: :users }
      # 外部キーとしてusersテーブルを参照する。そのまま実行しようとした場合、follows テーブルを参照しようとして、そんなテーブルはないとエラーになる。

      t.timestamps

      t.index [:user_id, :follow_id], unique: true
      # user_id と follow_id のペアで重複するものが保存されないようにするデータベースの設定です。このアプリでは、フォローするUserとフォローされるUserのペアの情報が重複することは、ありえません。DB上で矛盾が起きないように。

    end
  end
end