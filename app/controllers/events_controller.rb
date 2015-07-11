class EventsController < ApplicationController
  def index
    @event = Event.all.first
    render 'events/show'
  end

  def show
    @event = Event.find(params[:id])
  end
end