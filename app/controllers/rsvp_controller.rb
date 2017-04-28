class RsvpController < ApplicationController
  def create
    # TODO receive guest data and store
  end

  private
    def guest_params
      params.permit(:first_name, :last_name, :email)
    end
end
