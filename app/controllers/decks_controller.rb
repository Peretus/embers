class DecksController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @decks = @user.paths.first.decks.all
  end

  def show
    @deck_facts = Deck.find(params[:id]).facts
    new_deck_facts = []
    @deck_facts.each do |fact|
      words = fact.split_to_answer_objects
      new_deck_facts << { term: fact.term, definition: words, id: fact.id}
    end
    @facts = new_deck_facts.to_json
  end

  def show_admin
  end
end
