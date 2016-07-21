class PagesController < ApplicationController
  def home

    if params[:location].present? || params[:city].present? || params[:service].present? || params[:price].present?
      @mechanics = Mechanic.search(search_params)
    else
      @mechanics = Mechanic.all
    end

    respond_to do |format|
      format.html # home.html.erb
      format.json { render json: @mechanics }
    end
  end

  protected

  def search_params
    params.permit(:location, :city, :service, :price)
  end

end
