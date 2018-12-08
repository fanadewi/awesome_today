class DeathsController < ApplicationController
  def index
    @today = GetToday.new.to_attributes
  end
end
