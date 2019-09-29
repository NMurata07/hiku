class TopicDsController < ApplicationController
  def index
    @topic_ds = TopicD.all
  end
    
  def new
    @topic_d = TopicD.new
    @topic_u = TopicU.find(params[:topic_u_id])
  end

  def create
    @topic_d = current_user.topic_ds.new(topic_d_params)
    @topic_d.topic_u_id = params[:topic_u_id]
    if @topic_d.save
      redirect_to topic_u_path(id: params[:topic_u_id])
    else
      render :new
    end
  end

  def show
    @topic_u = TopicU.find(params[:topic_u_id])
  end
  
  def destroy
    @topic_d = TopicD.find(params[:id])
    if @topic_d.delete
      redirect_to root_path
    else
      redirect_to topic_d_path
    end
  end

  private
  def topic_d_params
    params.require(:topic_d).permit(:text)
  end
end
