import mapboxgl from 'mapbox-gl';

let map;

const addMarker = (marker) => {
  new mapboxgl.Marker()
    .setLngLat([ marker.lng, marker.lat ])
    .addTo(map);
}

const fitMapToMarkers = (markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
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

};


export { initMapbox };
