class Post < ActiveRecord::Base
  attr_accessor :name, :content

  def initialize()
    @name, @content = name, content
  end


end