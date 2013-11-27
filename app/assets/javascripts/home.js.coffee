$ ->
  pos = new google.maps.LatLng(-34.397, 150.644)
  mapOptions =
    center: pos
    zoom: 8
    mapTypeId: google.maps.MapTypeId.TERRAIN
  map = new google.maps.Map($("#map_canvas")[0], mapOptions)
  marker = new google.maps.Marker(
      position: pos
      map: map
    )

  moveMarker = (position) ->
    marker.setPosition position
    map.panTo position

  google.maps.event.addListener map, "click", (e) ->
    moveMarker e.latLng
    $('#map_results').html('<p>' + e.latLng.toString() + '</p>')