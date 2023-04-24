class ActorsController < ApplicationController
  def index
    @list_of_actors = Actor.all

    render({ :template => "actor_templates/index.html.erb"})
  end

  def bio
    actor_id = params.fetch("id")

    @the_actor = Actor.where({ :id => actor_id }).at(0)
    @filmography = Character.where({ :actor_id => actor_id })
    movie_title = @filmography

    render({ :template => "actor_templates/bio.html.erb"})
  end
end
