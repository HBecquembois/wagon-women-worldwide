import { Controller } from "@hotwired/stimulus"
import fetchWithToken from "../utils/fetch_with_token"

// Connects to data-controller="uptade-list"
export default class extends Controller {
  static targets = ["users", "form"]


  send() {

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
