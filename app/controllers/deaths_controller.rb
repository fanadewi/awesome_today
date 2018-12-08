class DeathsController < ApplicationController
  def index
    data = GetToday.new.to_attributes
    @today = Kaminari.paginate_array(data[:deaths]).page(params[:page])
  end
end
