class MoviesController < ApplicationController

  def index
    @list_of_movies = Movie.all

    render({ :template => "movie_templates/index.html.erb"})
  end

  def bio
    movie_id = params.fetch("id")

    @the_movie = Movie.where({ :id => movie_id }).at(0)
    @the_director = Director.where({ :id => movie_id })

    render({ :template => "movie_templates/bio.html.erb"})
  end
end
