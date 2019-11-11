class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @ask = params[:question]
    if @ask == "I'm going to work"
      @coach = "Great!"
    elsif @ask.include?('?')
      @coach = "Silly question, get dressed and go to work!"
    else
      @coach = "I don't care, get dressed and go to work!"
    end
  end
end
