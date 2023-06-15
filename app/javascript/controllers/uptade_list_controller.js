import { Controller } from "@hotwired/stimulus"
import fetchWithToken from "../utils/fetch_with_token"

// Connects to data-controller="uptade-list"
export default class extends Controller {
  static targets = ["users", "form"]


  send() {
    fetchWithToken("/users/search", {
      method: "POST", // Could be dynamic with Stimulus values
      headers: {
        "Accept": "application/json"
      },
      body: new FormData(this.formTarget)
    })
      .then(response => response.json())
      .then((data) => {
        this.usersTarget.innerHTML = data.inserted_items
      })
  }
}
