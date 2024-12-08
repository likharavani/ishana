class HomesController < ApplicationController

  def index
    @project = Project.all
    @project_images = ProjectImage.all
    @bg_image = ProjectImage.where(image_type: 2).first
    @long = ProjectImage.where(image_type: 2).last
    @states = Contact.new.states
    @mid = ProjectImage.where(image_type: 1).first(3)
    @last = ProjectImage.where(image_type: 0).first(2)
    @cities = []
  end

  def get_cities
    # byebug
    state_name = params[:state]
    all_states = CS.states(:in)
    state_key = all_states.key(state_name) 
    cities = Contact.new.cities(state_key, :IN)  
    render json: { cities: cities }
  end
end
