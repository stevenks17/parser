class GraphsController < ApplicationController
    def index
        @graphs = Graph.all
        render json: @graphs
    end

    def show
        @graph = Graph.find(params[:id])
        render json: @graphs
    end

    def create
        @graph = Graph.new(graph_params)
        if @graph.save
            render json: @graphs
        else
            render json: {error: "Graph could not be saved to the matrix. Please see Neo for assistance."}
        end
    end

    def destroy
        @graph = Graph.find(params[:id])
        @graph.destroy
        render json: {alert: "Graph Deleted"}
    end

    private

    def graph_params
        params.require(:graph).permit(:name, :info_url, :screenshot_url)
    end

end
