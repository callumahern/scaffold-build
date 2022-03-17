require 'test_helper'

class QuizQuestionsControllerTest < ActionController::TestCase
  setup do
    @quiz = quizzes(:one)
    @quiz_question = quiz_questions(:one)
  end

  test "should get index" do
    get :index, params: { quiz_id: @quiz }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { quiz_id: @quiz }
    assert_response :success
  end

  test "should create quiz_question" do
    assert_difference('QuizQuestion.count') do
      post :create, params: { quiz_id: @quiz, quiz_question: @quiz_question.attributes }
    end

    assert_redirected_to quiz_quiz_question_path(@quiz, QuizQuestion.last)
  end

  test "should show quiz_question" do
    get :show, params: { quiz_id: @quiz, id: @quiz_question }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { quiz_id: @quiz, id: @quiz_question }
    assert_response :success
  end

  test "should update quiz_question" do
    put :update, params: { quiz_id: @quiz, id: @quiz_question, quiz_question: @quiz_question.attributes }
    assert_redirected_to quiz_quiz_question_path(@quiz, QuizQuestion.last)
  end

  test "should destroy quiz_question" do
    assert_difference('QuizQuestion.count', -1) do
      delete :destroy, params: { quiz_id: @quiz, id: @quiz_question }
    end

    assert_redirected_to quiz_quiz_questions_path(@quiz)
  end
end
