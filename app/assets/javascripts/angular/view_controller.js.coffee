app = angular.module('viewControllers', [])

app.controller 'ViewCtrl', ($scope, $element) ->
  $scope.pics = [{src: '/assets/20445_Edit.jpg', mirror: false, visible: false}, {src: '/assets/20414.jpg', mirror: true, visible: false}, {src: '/assets/20368.jpg', mirror: true, visible: false}, {src: '/assets/20613.jpg', mirror: true, visible: false}]

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
