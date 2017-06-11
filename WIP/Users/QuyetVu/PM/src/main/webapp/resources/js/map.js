var autocomplete;
	function initialize() {
		// Create the autocomplete object, restricting the search
		// to geographical location types.
	  var country = document.getElementById('rider-form:country');
		autocomplete = new google.maps.places.Autocomplete(
		/** @type {HTMLInputElement} */
		(document.getElementById('rider-form:fromAddress')), {
			types : [ 'geocode' ],
		componentRestrictions: { 'country': country }
		});
		// Add a DOM event listener to react when the user selects a country.
		  google.maps.event.addDomListener(document.getElementById('rider-form:country'), 'change',
		      setAutocompleteCountry);
	}
	// Set the country restriction based on user input.
	// Also center and zoom the map on the given country.
	function setAutocompleteCountry() {
	  var country = document.getElementById('rider-form:country').value;
	    autocomplete.setComponentRestrictions({ 'country': country });
	}