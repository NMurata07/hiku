class TopicUsController < ApplicationController
  after_action :save_my_previous_url, only: [:new]

  def new
    @topic_u = TopicU.new
  end

  def create
    @topic_u = current_user.topic_us.new(topic_u_params)
    if @topic_u.save
      redirect_to session[:my_previous_url]
    else
      render :new
    end
  end

  def show
    @topic_u = TopicU.find_by(id: params[:id])
  end
  
  def destroy
    @topic_u = TopicU.find(params[:id])
    if @topic_u.delete
      redirect_to root_path
    else
      redirect_to topic_u_path
    end
  end
  
  private
    def save_my_previous_url
    # session[:previous_url] is a Rails built-in variable to save last url.
    session[:my_previous_url] = URI(request.referer || '').path
    end

    def topic_u_params
      params.require(:topic_u).permit(:text)
    end
end
