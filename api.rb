# Controller
def my_api
  @user = User.first
  respond_to do |format|
    format.json { render json: @user }
  end

  # render json: @user
end

# Getting from API
require 'net/http'
uri = URI('http://example.com/index.html?count=10')
Net::HTTP.get(uri) # => String

# Parsing JSON
ActiveSupport::JSON.decode("{\"team\":\"rails\",\"players\":\"36\"}")
=> {"team" => "rails", "players" => "36"}
