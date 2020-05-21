class NotesController < ApplicationController
    before_action :set_params 
    skip_before_action :verify_authenticity_token


    def index
        @notes = Note.all
        render json: @notes, status: 200
    end

    def show
        @note = @graph.notes.find_by(id: params[:id])
        render json: @note
    end

    def create
        @note = @graph.notes.new(note_params)
        if @note.save
            render json: @note
        else
            render json: {error: " Note was not saved to database. Please check with Neo."}
        end
    end

    def destroy
        @note = @graph.notes.find_by(id: params[:id])
        @note.destroy
        render json: {alert:"Note deleted."}
    end

    private

    def note_params
        params.require(:note).permit(:content, :graph_id)
    end

    def set_params
        @graph = Graph.find(params[:graph_id])
    end
end
