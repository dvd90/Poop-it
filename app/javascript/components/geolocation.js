
function geoLocate() {
  function getLocation() {
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(redirectToIndex);
    }
  }
  function redirectToIndex(position) {
    window.location = '/toilets?lat=' + position.coords.latitude + '&lng=' + position.coords.longitude;
  }

  if(document.getElementById('geolocate'))
    document.getElementById('geolocate').addEventListener('click', getLocation);
}

export { geoLocate };
