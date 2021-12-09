class ClimbsController < ApplicationController

  get '/climbs' do
    climbs = Climb.all
    climbs.to_json
  end

  post '/climbs' do
    climb= Climb.create({name:params[:name], grade:params[:grade], location:params[:location], climb_type:params[:climb_type], mt_project_link:params[:mt_project_link]})
    climb.to_json
  end


end