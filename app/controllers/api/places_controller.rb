class Api::PlacesController < ApplicationController
  def index
    @places = Place.order('id ASC').all
    render 'index.json.jbuilder'
  end

  def create
    @place = Place.new(
      name: params[:name],
      address: params[:address]
    )
    @place.save
    render 'show.json.jbuilder'
  end
end
