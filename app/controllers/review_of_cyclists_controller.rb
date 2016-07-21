class ReviewOfCyclistsController < ApplicationController

  def new
    @review = ReviewOfCyclist.new
  end

  def create
    @mechanic = Mechanic.find(session[:id])
    @review = @mechanic.review_of_cyclists.build(review_params)

    if @review.save
      redirect_to mechanic_path(@mechanic)
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
      redirect_to mechanic_path(@mechanic)
    else
      render :edit
    end
  end

  def show
    @review = ReviewOfCyclist.find(params[:id])
  end

  protected

  def review_params
    params.require(:review_of_cyclist).permit(:cyclist_id, :rating, :did_pay, :comments)
  end

end
