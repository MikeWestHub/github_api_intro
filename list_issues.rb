require 'net/http'
require 'json'
require 'pry'

class Issue
  ENDPOINT = "https://api.github.com/repos/westmd23/github_api_intro/issues"
  def list
    response = query_list
    JSON.parse(response)
  end

  private

  def query_list
    uri = URI(ENDPOINT)
    http = Net::HTTP.new(uri.host, uri.port)
    req = Net::HTTP::Get.new(uri)
    req.basic_auth ENV['GITHUB_USER'], ENV['GITHUB_PASSWORD']
    http.use_ssl = true
    response = http.request(req).body
  end
end
