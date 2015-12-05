// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require bootstrap

(function(){
  var app = angular.module('myApp', [])

  app.controller('AppCtrl', ['$scope', '$http', function($scope, $http) {

    $scope.searchArtists = function(count){
      $http.get('https://api.myhumm.com/v2/artists?auth=56630bd7ae8c5030388b4567&keyword='+count+'&limit=5&offset=0').then(function(response){
        $scope.artists = response.data.data_response
      });
    };

    $scope.searchSongs = function(count){
      $http.get('https://api.myhumm.com/v2/songs?auth=56630bd7ae8c5030388b4567&keyword='+count+'&limit=5&offset=0').then(function(response){
        $scope.songs = response.data.data_response

      });
    };

    $scope.searchPlaylists = function(count){
      $http.get('https://api.myhumm.com/v2/playlists?auth=56630bd7ae8c5030388b4567&keyword='+count+'&limit=5&offset=0').then(function(response){
        $scope.playlists = response.data.data_response
      });
    };

    $scope.searchSky = function(count){
      $http.get('/skydata/search.json?term='+count).then(function(response){
        
      });
    };

  }]);
})();