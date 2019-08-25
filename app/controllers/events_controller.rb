class EventsController < ApplicationController
  def index
    data = Rails.cache.fetch("events_#{Date.today}", expires_in: Time.now.end_of_day - Time.now) do
      GetToday.new.to_attributes
    end
    @today = Kaminari.paginate_array(data[:events]).page(params[:page])
  end
end
