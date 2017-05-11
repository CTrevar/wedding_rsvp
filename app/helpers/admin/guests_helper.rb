module Admin::GuestsHelper
  def full_name(guest)
    "#{guest.first_name} #{guest.last_name}"
  end
end
