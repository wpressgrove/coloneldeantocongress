class EventsController < ApplicationController
  def index
    @event = Event.next_event(0)
    render 'events/show'
  end

  def show
    @event = Event.find_by_slug(params[:id])
    @event = Event.find(params[:id]) if @event.nil?
  end
end