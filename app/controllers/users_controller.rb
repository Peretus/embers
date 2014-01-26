class UsersController < ApplicationController
  
  def index
  end

  def show
  end

  def edit
  end

  def update_mastery_score
    @user = User.find(current_user.id)
    @fact = @user.facts.find(params[:fact_id])
  end

  def create

binding.pry
    
  end
end
