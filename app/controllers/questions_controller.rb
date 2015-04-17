class QuestionsController < ApplicationController



	def new
		@question = Question.new
	end

  def create
    @question = Question.new(params.require(:question).permit(:id, :question, :answer1, :answer2, :answer3, :answer4))
    @question.save
    redirect_to new_question_path
  end

  def show
    @question = Question.all.sample

  end

end
