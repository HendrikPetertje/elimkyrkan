class EventsController < ApplicationController
  def index
  	@calendars = Externalevent.new.parse
  end

  def show

  end
end
