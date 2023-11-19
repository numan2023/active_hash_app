class Genre < ActiveHash::Base
  # ジャンルのデータを配列にハッシュ形式で格納
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '経済' },
    { id: 3, name: '政治' },
    { id: 4, name: '地域' },
    { id: 5, name: '国際' },
    { id: 6, name: 'IT' },
    { id: 7, name: 'エンタメ' },
    { id: 8, name: 'スポーツ' },
    { id: 9, name: 'グルメ' },
    { id: 10, name: 'その他' }
  ]

  # include ActiveHash::Associationsと記述してmoduleを取り込む
  # https://github.com/active-hash/active_hash/blob/master/lib/associations/associations.rb
    include ActiveHash::Associations
    has_many :articles
  end