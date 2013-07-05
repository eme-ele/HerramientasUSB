class VotesController < ApplicationController

  def create
    @answer = Answer.find(params[:answer_id])
    @question = Question.find(@answer.question_id)
    @vote = @answer.votes.create(params[:vote].except(:user_id))
    @vote.user_id = current_user.id
    @vote.save
    redirect_to question_path(@question)
  end


  def destroy
	@answer = Answer.find(params[:answer_id])
	@question = Question.find(@answer.question_id)
    @vote = @answer.votes.find(params[:id])
    @vote.destroy
    redirect_to question_path(@question)
  end



end
