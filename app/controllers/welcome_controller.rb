class WelcomeController < ApplicationController
  layout "main"

  def index
    @pretty_place = "#{ENV['wedding_city']}, #{ENV['wedding_state']}"
    @pretty_date = Date.parse(ENV['wedding_date'])
    @pretty_date = I18n.localize(@pretty_date, format: '%A, %d %B %Y')
    @acommodations = Hotel.all
    @registries = Registry.all
    @itinerary = Activity.all.order(:start_day).group_by(&:start_day)
  end

  def blog
    @posts = Post.all
  end
end
