require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/word_formatter')
require('json')

get '/' do
  erb (:home)
end

get '/address' do
  content_type(:json)
  address = {
         address: '3 ARGYLE HOUSE',
         building: 'CODEBASE',
         postcode: 'e13 zqf',
         phone: '0131558030'
     }
  postcode = WordFormatter.new(address[:postcode])
    updated_postcode = postcode.upcase
    address[:postcode] = updated_postcode
  return address.to_json
end