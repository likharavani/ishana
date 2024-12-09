class HomesController < ApplicationController

  def index
    @projects = Project.all
    @scroll_images = ProjectImage.where(image_type: 1)
    @background = ProjectImage.where(image_type: 2).last
    @grid_image = ProjectImage.where(image_type: 3)
    @design_crave = ProjectImage.where(image_type: 4).last
    @offer = ProjectImage.where(image_type: 5).last
    @why_choose = ProjectImage.where(image_type: 6).last

    @states = Contact.new.states
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
