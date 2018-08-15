function initMap() {
       var directionsService = new google.maps.DirectionsService;
       var directionsDisplay = new google.maps.DirectionsRenderer;
       var map = new google.maps.Map(document.getElementById('map'), {
         zoom: 6,
         center: {lat: 41.85, lng: -87.65}
       });
       directionsDisplay.setMap(map);

       document.getElementById('submit').addEventListener('click', function() {
         calculateAndDisplayRoute(directionsService, directionsDisplay);
       });
     }

     function calculateAndDisplayRoute(directionsService, directionsDisplay) {
     }
