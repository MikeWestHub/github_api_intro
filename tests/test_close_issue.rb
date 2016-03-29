require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './close_issue'

class Issue

  def query_list
    File.read("./issue_sample.json")
  end

end

class TestCloseIssue < Minitest::Test

end
