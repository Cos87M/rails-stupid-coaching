class QuestionsController < ApplicationController

  def answer
    @question = params[:question]
    @answer = coach_answer(@question) if @question
  end

  def ask
  end

  def coach_answer(your_message)
    if your_message.downcase == "I am going to work right now!"
      puts ''
    elsif your_message.end_with?("?")
      puts "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
