class TopicUsController < ApplicationController
  def show
    @topic_us = TopicU.all
  end
  
  def new
    @topic_u = TopicU.new
  end

  def create
    @topic_u = current_user.topic_us.new(topic_u_params)
    if @topic_u.save
      redirect_back(fallback_location: root_path)
    else
      render :new
    end
  end

  def show
    @topic_u = TopicU.find_by(id: params[:topic_u_id])
  end
  
  private
    def topic_u_params
      params.require(:topic_u).permit(:text)
    end
end
