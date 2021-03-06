// app/javascript/plugins/init_mapbox.js
import mapboxgl from 'mapbox-gl';
// import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';  uncomment for map search functionality

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });

    // Add geolocate control to the map.
    map.addControl(
    new mapboxgl.GeolocateControl({
    positionOptions: {
    enableHighAccuracy: true
    },
    trackUserLocation: true
    })
    );

    const markers = JSON.parse(mapElement.dataset.markers);
    markers.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);
      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(map);
    });


        const fitMapToMarkers = (map, markers) => {
          const bounds = new mapboxgl.LngLatBounds();
          markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
          map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 500 });
        };

         fitMapToMarkers(map, markers);

         // map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
         //                              mapboxgl: mapboxgl }));
         // uncomment for map search functionality



  }
};

  //   const markers = JSON.parse(mapElement.dataset.markers);
  //   markers.forEach((marker) => {
  //     new mapboxgl.Marker()
  //       .setLngLat([ marker.lng, marker.lat ])
  //       .addTo(map);
  //   });
  // }

document.addEventListener('turbolinks:load', () => {
  initMapbox();
})
