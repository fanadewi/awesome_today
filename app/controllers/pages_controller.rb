class PagesController < ApplicationController
  def index
    @quote = Quote.last
  end
end
