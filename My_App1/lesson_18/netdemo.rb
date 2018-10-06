# require 'net/http'

# response = Net::HTTP.get 'rubyschool.us', '/router'

# puts response

require 'net/http'
require 'uri'

uri = URI.parse 'http://rubyschool.us/router'

response = Net::HTTP.get uri

puts response