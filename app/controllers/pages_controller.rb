class PagesController < ApplicationController
  def home
    @mechanics = Mechanic.all

    respond_to do |format|
      format.html # home.html.erb
      format.json { render json: @mechanics }
    end
  end
end
