import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="uptade-list"
export default class extends Controller {
  static targets = ["users", "form", "counter"]


  send(e) {

    const fetchWithToken = (url, options) => {
      options.headers = {
        "X-CSRF-Token": document.querySelector("meta[name=csrf-token]").content,
        ...options.headers
      };

      return fetch(url, options);
    }

    let formData = new FormData(this.formTarget);
    fetchWithToken("/users/search", {
      method: "POST", // Could be dynamic with Stimulus values
      headers: {
        "Accept": "application/json"
      },
      body: formData
    })
      .then(response => response.json())
      .then((data) => {
        this.usersTarget.innerHTML = data.inserted_items
      })
  }
}
