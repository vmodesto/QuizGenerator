class QuizListsController < ApplicationController
  before_action :set_quiz_list, only: [ :show, :quizzes_of_list ]
  def show
    render :json => @quiz_list, status: :ok
  end

  def create
    @quiz_list = QuizList.new(quiz_list_params)
    if @quiz_list.save
      render :json => @quiz_list, status: :created
    else
      render @json => @quiz_list.errors, status: :unprocessable_entity
    end
  end

  def quizzes_of_list
    @quizzes_of_list = @quiz_list.quizzes
    render :json => @quizzes_of_list, status: :ok
  end

  private
  def set_quiz_list
    @quiz_list = QuizList.find(params[:id])
  end

  def quiz_list_params
    params.require(:quiz_list).permit(:name)
  end
end
