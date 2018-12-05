class EventsController < ApplicationController
  def index
    @data =  GetToday.new.to_attributes
  end
end
