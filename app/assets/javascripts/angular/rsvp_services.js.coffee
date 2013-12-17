rsvpService = angular.module('rsvpServices', ['ngResource'])

rsvpService.factory 'ReservationData', ($resource) ->
  $resource '/reservations'
