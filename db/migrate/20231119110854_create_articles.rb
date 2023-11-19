class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string     :title        , null: false
      t.text       :text         , null: false
      # Articleテーブル内に、Genreモデル(ActiveHash)のidを外部キーとして管理することで、記事に紐づいたジャンルの取得が可能となる。
      t.integer    :genre_id     , null: false
      t.timestamps
    end
  end
end
