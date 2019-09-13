class PagesController < ApplicationController
  def index
    @topic_us = TopicU.all.sort_by {|record| record.updated_at}.reverse!
  end
end
