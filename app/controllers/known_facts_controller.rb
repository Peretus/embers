class KnownFactsController < ApplicationController
  def show
      @user =  User.find(current_user.id)
      # ^ Change this once we install devise to current_user
      @due_facts_ref = @user.known_facts.where("decaying_mastery_score < 50.0" || "last_mastery_score == 0.0")
      due_facts = []
      @due_facts_ref.each do |ref|
        due_facts << Fact.find(ref.fact_id)
      end
      fact_objects = []
      due_facts.each do |fact|
        words = fact.split_to_answer_objects
        fact_objects << { term: fact.term, definition: words, fact_id: fact.id}
      end
      @facts = fact_objects.to_json
      # render template: "views/decks/show.html.erb"
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
end