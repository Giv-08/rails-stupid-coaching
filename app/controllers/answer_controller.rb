class AnswerController < ApplicationController

  def answer
    @input = params[:question] # take input
    # param is like hash key/value used for accessing form & URL query data
    @method = coach_answer(@input) # store private method in an instance variable
  end

  private

  def coach_answer(your_message)
    if your_message.include?('?')
      'Silly question, get dressed and go to work!'
    elsif your_message == 'I am going to work right now!'
      'Great!'
    elsif your_message == ''
      'Say something!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
