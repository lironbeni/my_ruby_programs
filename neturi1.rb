require 'net/http'

uri = URI('http://twitter.com')
res = Net::HTTP.get_response(uri)
puts res.code # => '200'
puts res.message # => 'OK'

puts Net::HTTP.get(uri) # => String

