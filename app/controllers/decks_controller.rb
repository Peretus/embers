class DecksController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @decks = @user.paths.first.decks.all
  end

  def show
    @user =  User.first
    # ^ Change this once we install devise to current_user
    @deck_facts = Deck.find(params[:id]).facts
    new_deck_facts = []
    unless @user.facts.include?(@deck_facts.first)
      @deck_facts.each do |fact|
        @user.known_facts.create(:fact_id=> fact.id, :user_id => @user.id, :mastery_score => 0.0, :last_seen => Time.now) 
      end
    end
    @deck_facts.each do |fact|
      words = fact.split_to_answer_objects
      new_deck_facts << { term: fact.term, definition: words, id: fact.id}
    end
    @facts = new_deck_facts.to_json
  end

  def show_admin
  end
end
