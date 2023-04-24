class MoviesController < ApplicationController

  def index
    @list_of_movies = Movie.all
 

    render({ :template => "movie_templates/index.html.erb"})
  end

  def bio
    movie_id = params.fetch("id")

    @the_movie = Movie.where({ :id => movie_id }).at(0)
    @director_id = Movie.where({ :id => movie_id }).at(0).director_id
    @the_director = Director.where({ :id => @director_id }).at(0)

    render({ :template => "movie_templates/bio.html.erb"})
  end
end
