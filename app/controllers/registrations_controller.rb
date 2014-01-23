class Users::RegistrationsController < Devise::RegistrationsController
  def create
    session["#{resource_name}_return_to"] = decks_index_path
    super
  end
end