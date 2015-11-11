class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    id = params[:id]  # Retrieve movie ID from URI route
    @movie = Movie.find(id)  # Look up movie by unique ID
    # Will render app/views/movies/show.html.haml by default
  end
end