import { Controller } from "@hotwired/stimulus";
import TomSelect from "tom-select";

// Connects to data-controller="autocomplete"
export default class extends Controller {
  connect() {
    const lesly = new TomSelect(this.element,{
        persist: false,
        createOnBlur: true,
        create: true
    });
    lesly.settings.placeholder = " Ada Lovelace ";
    lesly.inputState();
  }
}



