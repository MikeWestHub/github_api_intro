require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './list_issues'

class IssueTest < Minitest::Test

  def test_class_exists
    assert Issue
  end

  def test_issues_can_return_a_list_of_issues
    issue_1 = Issue.new("westmd23")
    assert_equal [], issue_1.list
  end

end
