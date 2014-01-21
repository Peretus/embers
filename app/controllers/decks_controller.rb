class DecksController < ApplicationController
  def index
    @decks = Path.first.decks.all
  end

  def show
  end

  def show_admin
  end
end
