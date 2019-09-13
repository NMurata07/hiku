class FavoritesController < ApplicationController
  def index
    @favorite_topics = []
    current_user.favorites.each do |favorite|
      @favorite_topics << User.favorite(favorite.topic_id, current_user.id, favorite.topic_type)
    end
  end

  def create
    favorite = Favorite.new
    favorite.user_id = current_user.id
    favorite.topic_id = params[:topic_id]
    favorite.topic_type = params[:topic_type]
    
    if favorite.save
      redirect_back(fallback_location: root_path, success: 'お気に入りしました')
    else
      redirect_to root_path, danger: 'お気に入りできませんでした'
    end
  end

  def destroy
    Favorite.find_by(user_id: current_user.id, topic_id: params[:topic_id], topic_type: params[:topic_type]).destroy
      redirect_back(fallback_location: root_path)
  end
end
