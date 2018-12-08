class EventsController < ApplicationController
  def index
    data = GetToday.new.to_attributes
    @today = Kaminari.paginate_array(data[:events]).page(params[:page])
  end
end
