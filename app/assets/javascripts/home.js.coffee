$ ->
  mapOptions =
    center: new google.maps.LatLng(-34.397, 150.644)
    zoom: 8
    mapTypeId: google.maps.MapTypeId.TERRAIN
  map = new google.maps.Map($("#map_canvas")[0], mapOptions)