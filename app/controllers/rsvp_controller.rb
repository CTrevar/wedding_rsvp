class RsvpController < ApplicationController
  def create
    @guest = Guest.new(guest_params)

    respond_to do |format|
      if @guest.save
        party = params[:members]
        if !party.nil?
          party.each do |attendee|
            g = Guest.new(first_name: attendee[:first_name], last_name: attendee[:last_name], email: attendee[:email])
            g.related_guest_id = @guest.id
            g.rsvp = @guest.rsvp
            g.save
          end
        end
        format.js
        format.json { render :show, status: :created, location: @guest }
      else
        format.js
        format.json { render json: @guest.errors, status: :unprocessable_entity }
      end
    end

  end

  private
    def guest_params
      params.permit(:first_name, :last_name, :email, :rsvp)
    end
end
