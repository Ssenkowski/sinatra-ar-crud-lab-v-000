class Post < ActiveRecord::Base
  attr_accessor :name, :content

  def self.all
    @@all ||= []
  end
  
  def initialize(opts={})
    @name, @content = opts[:name], opts[:content]
  end

  def save

  end

end