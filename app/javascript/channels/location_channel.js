const location = document.querySelector("#current-location")
const locationPlaceholder = document.querySelector("#location-placeholder")
const searchForm = document.querySelector("#food_type")


location.addEventListener("click", () => {
  locationPlaceholder.placeholder = "current location";
  getLocation();

  const x = document.getElementById("demo");
  function getLocation() {
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(showPosition);
    } else {
      x.innerHTML = "Geolocation is not supported by this browser.";
    }
  }

  function showPosition(position) {
    x.innerHTML = "{ latitude: " + position.coords.latitude +
    ", longitude: " + position.coords.longitude + " }";

    searchForm.insertAdjacentHTML('afterend', `<input type="hidden" name="location2" value="{ latitude: ${position.coords.latitude}, longitude: ${position.coords.longitude} }">` )

  }



});


// <%= text_field_tag :victor, params[:query] %>


// <%= hidden_field_tag :current_location,
//         params[:current_location], value:"{ latitude: " + position.coords.latitude +
//     ", longitude: " + position.coords.longitude + " }"
//         %>
