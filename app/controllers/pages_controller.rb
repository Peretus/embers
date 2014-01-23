class PagesController < ApplicationController
  skip_before_action :check_login
  def about
  end


  def split_to_answer_objects 
    spaced_word = self.definition.gsub('.', " . ")
    new_spaced_word = spaced_word.gsub("(", " (")
    new_spaced_word.split(' ')
  end


  def welcome

    @sample_deck_facts = Path.first.decks.first.facts
    new_sample_deck_facts = []
    @sample_deck_facts.each do |fact|
      words = fact.split_to_answer_objects
      new_sample_deck_facts << { term: fact.term, definition: words, id: fact.id}
    end
    @sample_facts = new_sample_deck_facts.to_json

  end
end