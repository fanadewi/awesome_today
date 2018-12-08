class BirthsController < ApplicationController
  def index
    data = GetToday.new.to_attributes
    @today = Kaminari.paginate_array(data[:births]).page(params[:page])
  end
end
