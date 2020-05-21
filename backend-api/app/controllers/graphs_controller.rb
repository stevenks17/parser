class GraphsController < ApplicationController
    before_action :set_params, only: [:show, :destroy]
    skip_before_action :verify_authenticity_token


    def index
        @graphs = Graph.all
        render json: @graphs
    end

    def show    
        render json: @graph, status: 200
    end

    def create
        @graph = Graph.new(graph_params)
    
        if @graph.save
            render json: @graph.to_json(:except => [:updated_at, :created_at])
        else
            render json: {error: " Graph could not be saved. "}       
        end
    end

    def destroy
        @graph.destroy
        render json: {alert: "Graph Deleted"}
    end

    private

    def graph_params
        params.require(:graph).permit(:name, :info_url, :screenshot_url)
    end

    def set_params
        @graph = Graph.find(params[:id])
    end
end
