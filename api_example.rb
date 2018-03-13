require 'rubygems'
require 'httparty'

class OhMyButton
  include HTTParty
  base_uri "edutechional-resty.herokuapp.com"

  def wow
    self.class.get('/posts.json')
  end
end

run_program = OhMyButton.new

puts run_program.wow
