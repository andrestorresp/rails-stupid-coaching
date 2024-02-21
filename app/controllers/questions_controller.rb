class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @questions = params[:questions]

    if @questions == "I am going to work"
      @respuesta = "Great!"
    elsif @questions.end_with?("?")
      @respuesta = "Silly question, get dressed and go to work!"
    else
      @respuesta = "I don't care, get dressed and go to work!"
    end
  end
end
