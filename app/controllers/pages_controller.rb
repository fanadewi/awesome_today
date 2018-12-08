class PagesController < ApplicationController
  def index
    @quote = Quote.new.to_attributes
  end
end
