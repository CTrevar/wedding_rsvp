class WelcomeController < ApplicationController
  layout "main"

  def index
    @pretty_place = "#{ENV['wedding_city']}, #{ENV['wedding_state']}"
    @pretty_date = Date.parse(ENV['wedding_date']).strftime("%A, %d %B %Y")
    @acommodations = Hotel.all
  end
end
