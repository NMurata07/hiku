class UsersController < ApplicationController
  def show
    @topic_us =current_user.topic_us
    @topic_ds =current_user.topic_ds
    @topics = (@topic_us + @topic_ds).sort_by {|record| record.created_at}.reverse!
  end
end
