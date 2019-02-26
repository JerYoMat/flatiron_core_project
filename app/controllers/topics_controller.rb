class TopicsController < ApplicationController
    def topic_tips
        @topic = Topic.find(params[:id])
        @tips = @topic.tips 
        render json: @tips
    end
end
