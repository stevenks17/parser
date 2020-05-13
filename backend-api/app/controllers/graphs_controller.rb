class GraphsController < ApplicationController
    before_action :set_params, only: [:show, :destroy]

    def index
        @graphs = Graph.all
        render json: @graphs
    end

    def show    
        render json: @graphs, status: 200
    end

    def create
        @graph = Graph.create(graph_params)
        render json: @graph, status: 200

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
