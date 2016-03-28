require 'net/http'
require 'json'
require 'pry'

class Issue

  def initialize(user)
    @user = user
  end

  def list
    uri = URI("https://api.github.com/issues")
    http = Net::HTTP.new(uri.hostname, uri.port)
    req = Net::HTTP::Get.new(uri)
    req.basic_auth ENV['GITHUB_USER'], ENV['GITHUB_PASSWORD']
    http.use_ssl = true
    response = http.request(req)
    JSON.parse(response.body)
  end
end
