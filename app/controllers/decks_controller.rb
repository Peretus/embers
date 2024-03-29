class DecksController < ApplicationController
  def index
    @user = User.find(current_user.id)
    @decks = @user.paths.first.decks.all
    @path = @user.paths.first
  end

  def show
    @user =  User.find(current_user.id)
    # ^ Change this once we install devise to current_user
    @deck = Deck.find(params[:id])
    @deck_facts = Deck.find(params[:id]).facts
    new_deck_facts = []
    unless @user.facts.include?(@deck_facts.first)
      @deck_facts.each do |fact|
        @user.known_facts.create(:fact_id=> fact.id, :user_id => @user.id, :decaying_mastery_score => 0.0, :times_seen => 0, :last_seen => Time.now) 
      end
      @deck.active = true
      @deck.save!
    end
    @deck_facts.each do |fact|
      words = fact.split_to_answer_objects
      new_deck_facts << { term: fact.term, definition: words, fact_id: fact.id}
    end
    @facts = new_deck_facts.to_json
  end

  def update
    @user = User.find(current_user.id)
    # # ^ Change this once we install devise to current_user
    # @fact = @user.known_facts.find_by_fact_id(fact_params)
    # @fact.mastery_score+=params[:points_earned]
    # @fact.last_seen = Time.now
    # @fact.save

    @user_fact = @user.known_facts.find_by_fact_id(params[:fact_id])
    @user_fact.last_mastery_score = params[:last_mastery_score]
    @user_fact.last_seen = Time.now
    if params[:last_mastery_score].to_i > 0
      @user_fact.times_seen += 1
    end
    @user_fact.save
    render json:  @user_fact.to_json, status: 200
  end

private
  def fact_params
    params.require(:known_fact).permit(:fact_id, :last_mastery_score)
  end

end
