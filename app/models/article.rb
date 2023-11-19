class Article < ApplicationRecord
  # https://github.com/active-hash/active_hash/blob/master/lib/associations/associations.rb
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre

  # 空の投稿を保存できないようにする
  validates :title, :text, presence: true

  # ジャンルの選択が「--」の時は保存できないようにする
  # 「--」を選択して保存しようとした時のデフォルトのエラーメッセージ「must be other than 0」を変更
  validates :genre_id, numericality: { other_than: 1, message: "can't be blank" }
end
