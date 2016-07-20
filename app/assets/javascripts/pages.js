 function initMap() {
        var mapDiv = document.getElementById('map');
        var map = new google.maps.Map(mapDiv, {
            center: {lat: 44.540, lng: -78.546},
            zoom: 8
        });
      }

      $(function() {
      	$('.ui.rating').rating(

      		// 'setting', 'onRate', function(value){
      		//  more amazing code
      		// }

      		);
      })