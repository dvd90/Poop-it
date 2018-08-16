import GMaps from 'gmaps/gmaps.js';
import { autocomplete } from '../components/autocomplete';

const mapElement = document.getElementById('map');
const styles = [
    {
        "featureType": "landscape.man_made",
        "elementType": "geometry.fill",
        "stylers": [
            {
                "visibility": "on"
            },
            {
                "color": "#dbd6c7"
            }
        ]
    },
    {
        "featureType": "poi",
        "elementType": "all",
        "stylers": [
            {
                "visibility": "off"
            }
        ]
    },
    {
        "featureType": "poi.park",
        "elementType": "geometry.fill",
        "stylers": [
            {
                "visibility": "on"
            },
            {
                "color": "#bbcea4"
            }
        ]
    },
    {
        "featureType": "road",
        "elementType": "geometry.fill",
        "stylers": [
            {
                "visibility": "on"
            },
            {
                "color": "#ffffff"
            }
        ]
    },
    {
        "featureType": "road",
        "elementType": "labels.text.fill",
        "stylers": [
            {
                "visibility": "on"
            },
            {
                "color": "#626468"
            }
        ]
    },
    {
        "featureType": "water",
        "elementType": "geometry.fill",
        "stylers": [
            {
                "visibility": "on"
            },
            {
                "color": "#d3e3ea"
            }
        ]
    }
];

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

  if (mapElement.dataset.route) {
    map.drawRoute({
      origin: [markers[0].lat, markers[0].lng],
      destination: [markers[1].lat, markers[1].lng],
      travelMode: 'walking'

    });
    map.setZoom(17);
  }
}

autocomplete();
