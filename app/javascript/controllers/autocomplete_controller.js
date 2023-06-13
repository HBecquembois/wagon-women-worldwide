import { Controller } from "@hotwired/stimulus";
import TomSelect from "tom-select";
// Connects to data-controller="autocomplete"
export default class extends Controller {
  connect() {

    new TomSelect(this.element,{
        persist: false,
        createOnBlur: true,
        create: true
    });
    lesly.settings.placeholder = "css,ruby,sql..";
    lesly.inputState();
  }
}
