require 'net/http'
require 'json'
require 'pry'

class Issue

  def initialize(user)
    @user = user
  end

  def list
    uri = URI("https://api.github.com/issues")
    req = Net::HTTP::Get.new(uri, {'Content-Type' =>'application/json'})
    req.basic_auth ENV['GITHUB_USER'], ENV['GITHUB_PASSWORD']
    http = Net::HTTP.new(uri.hostname, uri.port)
    http.use_ssl = true
    http.start
    response = http.request(req)
    return_list = response.body
    JSON.parse(return_list)
  end

end
