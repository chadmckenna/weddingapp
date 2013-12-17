class ReservationsController < ApplicationController

  def find

  end

  def show
    @reservation = Reservation.where(reservation_url: params[:reservation_url]).first
  end

  def update

  end

end