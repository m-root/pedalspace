// Note: This code requires that you consent to location sharing when
// prompted by your browser. If you see the error "The Geolocation service
// failed.", it means you probably did not give permission for the browser to
// locate you.

function initMap() {
  var map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: 48.4284, lng: -123.3656},
    zoom: 12
  });
  var infoWindow = new google.maps.InfoWindow({map: map});

  // Try HTML5 geolocation.
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(position) {
      var pos = {
        lat: position.coords.latitude,
        lng: position.coords.longitude
      };

      infoWindow.setPosition(pos);
      infoWindow.setContent('Location found.');
      map.setCenter(pos);
    }, function() {
      handleLocationError(true, infoWindow, map.getCenter());
    });
  } else {
    // Browser doesn't support Geolocation
    handleLocationError(false, infoWindow, map.getCenter());
  }

  // Add mechanics to map
  $.ajax({
    type: 'GET',
    url: 'home',
    dataType: 'json',
    success: function (data) {
        $.each(data, function(index, mechanic) {
          new google.maps.Marker({
            position: {lat: mechanic.latitude, lng: mechanic.longitude},
            map: map,
            title: mechanic.first_name
          });
        });
      }
  });
  
}

function handleLocationError(browserHasGeolocation, infoWindow, pos) {
  infoWindow.setPosition(pos);
  infoWindow.setContent(browserHasGeolocation ?
                        'Error: The Geolocation service failed.' :
                        'Error: Your browser doesn\'t support geolocation.');
}


// PREVIOUS CODE

      $(function() {
      	$('.ui.rating').rating(

      		// 'setting', 'onRate', function(value){
      		//  more amazing code
      		// }

      		);
      })
