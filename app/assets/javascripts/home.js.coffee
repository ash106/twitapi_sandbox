$ ->
  pos = new google.maps.LatLng(-2.3833455768534364, 34.541015625)
  mapOptions =
    center: pos
    zoom: 4
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
    $('#map_results').html('<p>Lat: ' + e.latLng.lat() + '</p><p>Lng: ' + e.latLng.lng() + '</p>')