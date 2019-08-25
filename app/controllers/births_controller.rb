class BirthsController < ApplicationController
  def index
    data = Rails.cache.fetch("births_#{Date.today}", expires_in: Time.now.end_of_day - Time.now) do
      GetToday.new.to_attributes
    end
    @today = Kaminari.paginate_array(data[:births]).page(params[:page])
  end
end
