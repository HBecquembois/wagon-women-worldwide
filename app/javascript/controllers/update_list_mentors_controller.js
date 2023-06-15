import { Controller } from "@hotwired/stimulus"
import fetchWithToken from "../utils/fetch_with_token"

// Connects to data-controller="update-list-mentors"
export default class extends Controller {
  static targets = ["users", "form", "counter"]

  send() {
    fetchWithToken("/mentors/mentor_search", {
      method: "POST", // Could be dynamic with Stimulus values
      headers: {
        "Accept": "application/json"
      },
      body: new FormData(this.formTarget)
    })
      .then(response => response.json())
      .then((data) => {
        this.usersTarget.innerHTML = data.inserted_items
        this.counterTarget.innerHTML = data.counter
      })
  }
}
