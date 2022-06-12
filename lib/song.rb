require 'pry'
require_relative 'concerns/memorable.rb'
require_relative 'concerns/findable.rb'
require_relative 'concerns/paramable.rb'

class Song

  attr_accessor :name
  attr_reader :artist

  extend Memorable::ClassMethods
  extend Findable::ClassMethods  

  include Paramable::InstanceMethods
  include Memorable::InstanceMethods

  @@songs = []

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end
end
