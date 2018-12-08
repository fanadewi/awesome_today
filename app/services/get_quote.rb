class GetQuote
  require 'rest-client'
  require 'json'
  require 'uri'

  URL = 'http://quotes.rest/qod.json'

  attr_reader :text, :author, :image, :link

  def initialize
    data = JSON.parse(response_body).symbolize_keys
    quote = data[:contents]['quotes'].first
    @text = quote['quote']
    @author = quote['author']
    @image = quote['background']
    @link = quote['permalink']
  end

  def to_attributes
    {
      text: text,
      author: author,
      image: image,
      link: link
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

