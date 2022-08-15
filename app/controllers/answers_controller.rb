class AnswersController < ApplicationController

  def answer
    @question = params[:question]
    @test = [1,2,34,4]

    if @question[-1] == '?'
      @answer = 'Silly question, get dressed and go to work!'
    elsif @question == 'I am going to work'
      @answer = 'Great'
    else
      @answer = 'I don\'t care, get dressed and go to work!'
    end

    # I am going to work -> Great
    # ...? -> Silly question, get dressed and go to work!
    # ..... -> I don't care, get dressed and go to work!
  end
end
