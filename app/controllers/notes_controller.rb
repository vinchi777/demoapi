class NotesController < ApplicationController
  def index
    @notes = Note.all

    render json: NoteSerializer.new(@notes).serializable_hash
  end

  def create
    @note = Note.new(note_params)

    if @note.save
      render json: NoteSerializer.new(@note).serializable_hash
    else
      render json: @note.errors.full_messages.to_sentence
    end
  end

  private

  def note_params
    params.require(:data).permit(
      attributes: %i[subject body]
    )
  end
end
