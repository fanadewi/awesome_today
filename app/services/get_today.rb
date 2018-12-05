class GetToday
  require 'rest-client'
  require 'json'
  require 'uri'

  URL = 'http://history.muffinlabs.com/date'

  attr_reader :date, :events, :births, :deaths

  def initialize
    data = JSON.parse(response_body).symbolize_keys
    @date = data[:date]
    @births = data[:data]['Births'];
    @deaths = data[:data]['Deaths'];
    @events = data[:data]['Events'];
  end

  def to_attributes
    {
      events: events,
      births: births,
      deaths: deaths,
      date: date
    }
  end

  private

  def response_body
    get.body
  end

  def get
    RestClient.get(URL)
  end

end

