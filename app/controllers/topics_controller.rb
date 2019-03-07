class TopicsController < ApplicationController
    def topic_tips
        @topic = Topic.find(params[:id])
        @tips = @topic.tips 
        render json: @tips
    end

    def index 
      @unit = Unit.find(params[:id])
      @topics = @unit.topics 
      render json: @topics
    end 
end
