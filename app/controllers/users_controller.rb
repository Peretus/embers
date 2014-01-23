class UsersController < ApplicationController
  
  def index
  end

  def show
  end

  def edit
  end

  def update_mastery_score
    @user = current_user
    @fact = @user.facts.find(params[:fact_id])
  end
end
