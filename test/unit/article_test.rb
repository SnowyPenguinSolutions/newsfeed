require 'test_helper'

class ArticleTest < ActiveSupport::TestCase

  test "that without a title it is not valid" do 
    @article = Article.new(:title => "", :body => "This is a valid body")
    assert !@article.valid?
  end


  test "that without a body it is not valid" do
    @article = Article.new(:title => "This is valid", :body => "")
    assert !@article.valid?
  end

  test "that with both a body and a title it is valid" do
    @article = Article.new(:title => "Valid", :body => "this is valid, yo")
    assert @article.valid?
  end
end
