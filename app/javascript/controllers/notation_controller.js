import { Controller } from "@hotwired/stimulus"
import { annotate } from "rough-notation"

// Connects to data-controller="notation"
export default class extends Controller {
  connect() {
    annotate(this.element, { type: 'underline', color: '#E60F05', iterations: 3, multiline: true }).show();
  }
}
