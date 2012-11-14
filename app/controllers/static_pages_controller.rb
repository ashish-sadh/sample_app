class StaticPagesController < ApplicationController

  def home
    if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
    @search_results = Micropost.all
    #@search_results = Micropost.paginate(page: params[:page])

  end

  def help
  end

  def about
  end

  def contact
  end

  def search
	@results = Micropost.all
	#@results = Micropost.search(params[:search])
	redirect_to root_url	
  end

end
