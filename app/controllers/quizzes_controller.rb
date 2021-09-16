class QuizzesController < ApplicationController
  before_action :set_quiz, only: [ :show, :destroy, :update ]
  def show
    render :json => @quiz, status: :ok
  end

  def create
    @quiz = Quiz.create(quiz_params)
    render :json => @quiz, status: :created
  end

  def update
    if @quiz.update(quiz_params)
      render :json => @quiz, status: :ok
    else
      render :json => @quiz.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @quiz.destroy
    render :json => :ok, status: :ok
  end

  private
  def set_quiz
    @quiz = Quiz.find(params[:id])
  end

  def quiz_params
    params.require(:quiz).permit(:title, :quiz_list_id, :number)
  end
end
