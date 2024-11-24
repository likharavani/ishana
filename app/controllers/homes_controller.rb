class HomesController < ApplicationController

  def index
    @states = Contact.new.states
    @cities = []
  end

  def get_cities
    state_name = params[:state]
    all_states = CS.states(:in)
    state_key = all_states.key(state_name) 
    cities = Contact.new.cities(state_key, :IN)  
    render json: { cities: cities }
  end
end
