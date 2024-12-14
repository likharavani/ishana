class ProjectsController < ApplicationController

  def index
  end

  def show
    @states = Contact.new.states
    @cities = []
    @project  = Project.find_by(id: params[:id])
  end
end
