class TickListController < ApplicationController

    get '/ticklist' do
      
      tickList = TickList.all
      tickList.to_json(include: [:user, :climb])
    end

    delete '/ticklist/:id' do
        ticklist = TickList.find(params[:id])
        ticklist.destroy
        {message: 'ticklist removed'}.to_json
    end

    post '/ticklist' do
        ticklist = TickList.create(user_id: User.ids.sample, climb_id:params[:climb_id], completed:params[:completed], beta:params[:beta])
        ticklist.to_json(include: [:user, :climb])
    end

    patch '/ticklist/:id' do
        ticklist = TickList.find(params[:id])
        ticklist.update({user_id:params[:userId], climb_id:params[:climb_id], completed:params[:completed], beta:params[:beta]})
        ticklist.to_json(include: [:user, :climb])
    end
  
  end