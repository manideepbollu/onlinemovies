class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
    @cart_action = @movie.cart_action current_user.try :id
    @reviews = Review.where(movie_id: @movie.id)
    @rating = 0
    if @reviews.count != 0
      @reviews.each do |review|
        @rating += review.rating
      end
      @rating = @rating/@reviews.count
    end
  end

end
