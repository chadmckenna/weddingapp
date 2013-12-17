class Reservation < ActiveRecord::Base
  after_initialize :set_url

private
  def set_url
    self.reservation_url = Utils.generate_random_string(4)
  end
end