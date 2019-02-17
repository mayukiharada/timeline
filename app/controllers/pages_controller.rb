class PagesController < ApplicationController

  def index
    @pages = Page.all
  end

  def new
    @page = Page.new
  end

  def create
  @page = Page.new(page_params)
  #現在ログインしているUserのidをTweetのuser_idという部分にセット
  @page.user_id = current_user.id

  #新しいTweetの保存に成功した場合
  if @page.save
    #index.html.erbにページが移る
    redirect_to action: "index"
  #新しいTweetの保存に失敗した場合
  else
    #もう一回投稿画面へ
    redirect_to action: "new"
  end
end

def page_params
 params.require(:page).permit(:name, :user_id)
end

end
