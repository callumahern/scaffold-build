class QuizQuestionsController < ApplicationController
  before_action :set_quiz
  before_action :set_quiz_question, only: [:show, :edit, :update, :destroy]

  # GET quizzes/1/quiz_questions
  def index
    @quiz_questions = @quiz.quiz_questions
  end

  # GET quizzes/1/quiz_questions/1
  def show
  end

  # GET quizzes/1/quiz_questions/new
  def new
    @quiz_question = @quiz.quiz_questions.build
  end

  # GET quizzes/1/quiz_questions/1/edit
  def edit
  end

  # POST quizzes/1/quiz_questions
  def create
    @quiz_question = @quiz.quiz_questions.build(quiz_question_params)

    if @quiz_question.save
      redirect_to([@quiz_question.quiz, @quiz_question], notice: 'Quiz question was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT quizzes/1/quiz_questions/1
  def update
    if @quiz_question.update_attribute(quiz_question_params, nil)
      redirect_to([@quiz_question.quiz, @quiz_question], notice: 'Quiz question was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE quizzes/1/quiz_questions/1
  def destroy
    @quiz_question.destroy

    redirect_to quiz_quiz_questions_url(@quiz)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quiz
      @quiz = Quiz.find(params[:quiz_id])
    end

    def set_quiz_question
      @quiz_question = @quiz.quiz_questions.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def quiz_question_params
      params.require(:quiz_question).permit(:question, :quiz_id)
      params.require(:answer_options).permit(:choice)
    end
end
