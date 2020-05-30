class QuestionsController < ApplicationController
    before_action :set_params 
    skip_before_action :verify_authenticity_token


    def index
        @questions = @graph.questions
        render json: @questions, status: 200
    end

    def show
        @graph = @graph.questions.find_by(id: params[:id])
        render json: @question
    end

    def create
        @question = @graph.questions.new(question_params)
        if @question.save
            render json: @question
        else
            render json: {error: " Question was not saved to database. Please check with Neo."}
        end
    end

    def destroy
        @question = @graph.questions.find_by(id: params[:id])
        @question.destroy
        render json: {alert:"Question deleted."}
    end

    private

    def question_params
        params.require(:question).permit(:content, :graph_id)
    end

    def set_params
        @graph = Graph.find(params[:graph_id])
    end
end
