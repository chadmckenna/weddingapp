app = angular.module('viewControllers', [])

app.controller 'ViewCtrl', ['$scope', '$element',
  ($scope, $element) ->
    $scope.pics = [{src: '/assets/20445_Edit_sm.jpg', mirror: false, visible: false}, {src: '/assets/20414_sm.jpg', mirror: true, visible: false}, {src: '/assets/20368_sm.jpg', mirror: true, visible: false}, {src: '/assets/20613_sm.jpg', mirror: true, visible: false}]

    _rand = ->
      Math.floor(Math.random()*$scope.pics.length)

    $scope.setPic = ->
      for pic in $scope.pics
        pic.visible = false
      $scope.pics[_rand()].visible = true

    $scope.setPic()

    setInterval ->
        $scope.setPic()
        $scope.$apply()
      , 12000

    $scope.openMap = ->
      lat_lng = new google.maps.LatLng(39.737412, -105.211704)
      map_options = {center: lat_lng, zoom: 14}
      map = new google.maps.Map $('#fossil-trace-map')[0], map_options
      marker = new google.maps.Marker
        position: lat_lng
        map: map
        title: "Fossil Trace Golf Course"

    $('#directions').on('shown.bs.modal', $scope.openMap)
]