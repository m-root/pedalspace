class ReviewOfMechanicsController < ApplicationController
  def index
  end

  def new
    @review = ReviewOfMechanic.new
  end

  def create
    @cyclist = Cyclist.find(session[:id])
    @review = @cyclist.review_of_mechanic.build(review_params)

    if @review.save
      redirect_to mechanic_path
    else
      render :new
    end
  end

  def edit
    @review = ReviewOfMechanic.find(params[:id])
  end

  def update
    @review = ReviewOfMechanic.find(params[:id])

    if @review.update_attributes(review_params)
      redirect_to mechanic_path
    else
      render :edit
    end
  end

  def show
  end

  protected

  def review_params
    params.require(:review_of_mechanic).permit(:mechanic_id, :rating, :service_expected, :price_expected, :comments)
  end

end
