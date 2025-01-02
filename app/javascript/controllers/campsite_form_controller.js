import { Controller } from "@hotwired/stimulus"; 
// Connects to data-controller="campsite-form" 
export default class extends Controller { 
  static targets = ["form"]; 
  connect() { 
    console.log("CampsiteFormController connected"); 
  } 
  submit(event) { 
    event.preventDefault(); // Prevent the default form submission 
    const formData = new FormData(this.formTarget); 
    fetch(this.formTarget.action, { 
      method: this.formTarget.method, 
      body: formData, 
      headers: { 
        "X-Requested-With": "XMLHttpRequest" // Indicate that this is an AJAX request 
      } 
    }) 
    .then(response => { 
      if (response.ok) { 
        return response.json(); // Assuming the server responds with JSON 
      } 
      throw new Error('Network response was not ok.'); 
    }) 
    .then(data => { 
      // Handle success (e.g., redirect or display a success message) 
      console.log(data); 
      window.location.href = data.redirect_url; // Redirect to the campsite's show page or handle as needed 
    }) 
    .catch(error => { 
      console.error('There was a problem with the fetch operation:', error); 
      console.error(error.stack); // Log the error stack for debugging 
    }); 
  } 
} 