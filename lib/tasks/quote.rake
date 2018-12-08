namespace :getter do

  task :quote => :environment do
    Quote.create!(GetQuote.new.to_attributes)
  end
end