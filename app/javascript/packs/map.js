import GMaps from 'gmaps/gmaps.js';
import { autocomplete } from '../components/autocomplete';

const mapElement = document.getElementById('map');
const styles = [     {
  "featureType": "all",
  "elementType": "all",
  "stylers": [
    {
      "color": "#ff7000"
    },
    {
      "lightness": "69"
    },
    {
      "saturation": "100"
    },
    {
      "weight": "1.17"
    },
    {
      "gamma": "2.04"
    }
  ]
},
{
  "featureType": "all",
  "elementType": "geometry",
  "stylers": [
    {
      "color": "#cb8536"
    }
  ]
},
{
  "featureType": "all",
  "elementType": "labels",
  "stylers": [
    {
      "color": "#ffb471"
    },
    {
      "lightness": "66"
    },
    {
      "saturation": "100"
    }
  ]
},
{
  "featureType": "all",
  "elementType": "labels.text.fill",
  "stylers": [
    {
      "gamma": 0.01
    },
    {
      "lightness": 20
    }
  ]
},
{
  "featureType": "all",
  "elementType": "labels.text.stroke",
  "stylers": [
    {
      "saturation": -31
    },
    {
      "lightness": -33
    },
    {
      "weight": 2
    },
    {
      "gamma": 0.8
    }
  ]
},
{
  "featureType": "all",
  "elementType": "labels.icon",
  "stylers": [
    {
      "visibility": "off"
    }
  ]
},
{
  "featureType": "landscape",
  "elementType": "all",
  "stylers": [
    {
      "lightness": "-8"
    },
    {
      "gamma": "0.98"
    },
    {
      "weight": "2.45"
    },
    {
      "saturation": "26"
    }
  ]
},
{
  "featureType": "landscape",
  "elementType": "geometry",
  "stylers": [
    {
      "lightness": 30
    },
    {
      "saturation": 30
    }
  ]
},
{
  "featureType": "poi",
  "elementType": "geometry",
  "stylers": [
    {
      "saturation": 20
    }
  ]
},
{
  "featureType": "poi.park",
  "elementType": "geometry",
  "stylers": [
    {
      "lightness": 20
    },
    {
      "saturation": -20
    }
  ]
},
{
  "featureType": "road",
  "elementType": "geometry",
  "stylers": [
    {
      "lightness": 10
    },
    {
      "saturation": -30
    }
  ]
},
{
  "featureType": "road",
  "elementType": "geometry.stroke",
  "stylers": [
    {
      "saturation": 25
    },
    {
      "lightness": 25
    }
  ]
},
{
  "featureType": "water",
  "elementType": "all",
  "stylers": [
    {
      "lightness": -20
    },
    {
      "color": "#ecc080"
    }
  ]
} ];

if (mapElement) { // don't try to build a map if there's no div#map to inject in
  const map = new GMaps({ el: '#map', lat: 0, lng: 0 });
  const markers = JSON.parse(mapElement.dataset.markers);

  map.addMarkers(markers);

  if (markers.length === 0) {
    map.setZoom(2);
  } else if (markers.length === 1) {
    map.setCenter(markers[0].lat, markers[0].lng);
    map.setZoom(16);
  } else {
    map.setCenter(markers[0].lat, markers[0].lng);
    map.setZoom(16);
    // map.fitLatLngBounds(markers);
  }

  map.addStyle({
    styles: styles,
    mapTypeId: 'map_style'
  });
  map.setStyle('map_style');
}

autocomplete();
