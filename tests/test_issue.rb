require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './list_issues'

class Issue

  def query_list
    File.read("./issue_sample.json")
  end

end

class IssueTest < Minitest::Test

  def test_class_exists
    assert Issue
  end

  def test_issues_can_return_a_list_of_issues
    api = Issue.new
    assert_equal 1, api.list.size
  end

end
