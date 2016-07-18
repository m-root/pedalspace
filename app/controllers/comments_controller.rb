class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @comment = @booking.comments.build(comment_params)

    if @comment.save
      redirect_to "/mechanics/#{params[:mechanic_id]}/bookings/#{params[:booking_id]}"
    else
      render :new
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])

    if @comment.update_attributes(comment_params)
      redirect_to "/mechanics/#{params[:mechanic_id]}/bookings/#{params[:booking_id]}"
    else
      render :edit
    end
  end

  def show
    @comment = Comment.find(params[:id])
  end

  protected

  def comment_params
    params.require(:comment).permit(:booking_id, :content)
  end

end
