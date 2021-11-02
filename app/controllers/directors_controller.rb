class DirectorsController < ApplicationController
  def index
    render({:template => "director_templates/index.html.erb"})
  end

  def eldest
    @oldest = Director.where.not({:dob => nil}).order(:dob).first
    render({:template => "director_templates/eldest.html.erb"})
  end
  
  def youngest
    @youngest = Director.where.not({:dob => nil}).order(:dob).last
    render({:template => "director_templates/youngest.html.erb"})
  end

  def director_bio
    id = params.fetch('id')
    @director = Director.where(:id => id).at(0)
    render({:template => "director_templates/bio.html.erb"})
  end
end