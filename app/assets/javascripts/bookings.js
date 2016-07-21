$(function() {
  $("#Accept").on('click', function() {
    $.ajax({
    type: 'post',
    url: ''
    dataType: 'string',
    success: function (data) {
        $.each(data, function(index, mechanic) {
          new google.maps.Marker({
            animation: google.maps.Animation.DROP,
            position: {lat: mechanic.latitude, lng: mechanic.longitude},
            map: map,
            title: mechanic.first_name
          });
        });
      }
  });
  });
});