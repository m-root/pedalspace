class ReviewOfCyclistsController < ApplicationController

  def index
  end

  def new
    @review = ReviewOfCyclist.new
  end

  def create
    @mechanic = Mechanic.find(session[:id])
    @review = @mechanic.review_of_cyclist.build(review_params)

    if @review.save
      redirect_to cyclist_path
    else
      render :new
    end
  end

  def edit
    @review = ReviewOfCyclist.find(params[:id])
  end

  def update
    @review = ReviewOfCyclist.find(params[:id])

    if @review.update_attributes(review_params)
      redirect_to cyclist_path
    else
      render :edit
    end
  end

  def show
  end

  protected

  def review_params
    params.require(:review_of_cyclist).permit(:cyclist_id, :rating, :service_expected, :price_expected, :comments)
  end

end
