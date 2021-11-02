class MoviesController < ApplicationController
  def index
    render({:template => "movie_templates/index.html.erb"})
  end

  def movie_desc
    id = params.fetch('id')
    @movie = Movie.where(:id => id).at(0)
    render({:template => "movie_templates/description.html.erb"})
  end
end