class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    id = params[:id]  # Retrieve movie ID from URI route
    @movie = Movie.find(id)  # Look up movie by unique ID
    # Will render app/views/movies/show.html.haml by default
  end

  def new
    # Default: render 'new' template
  end

  def create
    @movie = Movie.create!(params[:movie])
    flash[:notice] = "#{movie.title} was successfully created."
    redirect_to movies_path
end