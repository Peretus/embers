class PagesController < ApplicationController
  def about
  end

  def welcome
    @fact = Path.first.decks.first.facts.first
    @words = @fact.split_to_answer_objects
  
  end
end
