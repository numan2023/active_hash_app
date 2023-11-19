# ActiveHash
  都道府県名などの変更されないデータをモデルファイル内に直接記述することで、データベースへ保存せずにデータを取り扱うことができるGemのこと。
  モデルファイルに直接記述した変更されないデータに対して、ActiveRecordのようなメソッドを用いることができる。

# 記事管理のArticleモデルと、記事のジャンルを管理するGenreモデルを作成

# ActiveHash::Base
  あるモデル内（クラス内）でActiveHashを用いる際に必要となるクラスのこと。Gemに定義されている。
  ~::Baseを継承することで、ActiveRecordと同じようなメソッドを使用できるようになる(new, create etc.
  )。

# module
  ActiveHashを用いてアソシエーションを設定する場合、ActiveHashで定義されているmoduleをモデルに取り込む必要がある。
  moduleとは、特定の役割を持つメソッドや定数に名前をつけてまとめたもの。
    どんなオブジェクトにも取り込んで使うことが可能。
    複数のクラスにまたがるメソッドや定数をmoduleとしてまとめることで、コードの肥大化を防いだり、複数クラスの特徴を継承させたいクラスを作成するときに利用する。

# collection_select
  モデルのデータと連携してセレクトボックスを表示できるメソッド。
  同メソッドにより、セレクトボックスのメニューに表示する項目をテーブルやアクティブハッシュを用いて定義することができる。
  例）<%= form.collection_select(保存されるカラム名, オブジェクトの配列, カラムに保存される項目, 選択肢に表示されるカラム名, オプション, htmlオプション) %>
    {}第五引数のオプションが空白の場合、オプションの指定なし(使用例：{include_blank: "---"})