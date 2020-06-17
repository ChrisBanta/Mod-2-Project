class QuestionsController < ApplicationController
    def index
        @question = Question.all.sample
        render json: @question
    end
end
