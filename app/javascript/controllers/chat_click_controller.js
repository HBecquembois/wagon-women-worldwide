import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="chat-click"
export default class extends Controller {
  static targets = ["displayChat", "chatButton"]

  connect() {
    console.log("Hello from chat click controller");
  }

  display(event) {
    event.preventDefault();

    fetch(this.chatButton.action, {
      method: "POST",
      headers: { "Accept":
    "application/json" },
      body: new chatButtonData(this.chatButtonTarget)
    })
      .then(response => response.json())
      .then((data) => {
        if (data.inserted_item) {
          this.itemsTarget.insertAdjacentHTML("beforeend", data.inserted_item)
        }
        this.formTarget.outerHTML = data.displayChat
      })
  }
}
