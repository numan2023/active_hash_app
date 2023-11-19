class ArticlesController < ApplicationController
  def index
    # 記事一覧が新規投稿順に並ぶように記述する
    @articles = Article.order("created_at DESC")
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity # 発生したエラーの種類を示すもので、何らかの処理に失敗したという汎用的な指定方法。
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :text, :genre_id)
  end
end
