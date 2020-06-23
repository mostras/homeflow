import mapboxgl from 'mapbox-gl';

let map;


const addMarker = (marker) => {
  let link = `<a href="http://maps.google.com/?q=${marker.full_address.replace(/\s/g, '')}" target="_blank">S'y rendre</a>`
  let url = document.URL;
  console.log(url)
  let user_link = `<a href="${marker.url}"><h2>${marker.last_name} ${marker.first_name}</h2></a>`

  const popup = new mapboxgl.Popup({ offset: 10 }).setHTML(`${user_link} <br> ${link}`)


  new mapboxgl.Marker()
    .setLngLat([ marker.lng, marker.lat ])
    .addTo(map)
    .setPopup(popup);
}

const fitMapToMarkers = (markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 100, maxZoom: 20, duration: 0 });
};

const initMapbox = () => {
  const mapElement = document.getElementById('map');
  console.log(map)
  if (mapElement == null) { return }

  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v10'
  });

  const markers = JSON.parse(mapElement.dataset.markers);
  markers.forEach(addMarker);
  fitMapToMarkers(markers);

  map.addControl(new mapboxgl.FullscreenControl());

};


export { initMapbox };
