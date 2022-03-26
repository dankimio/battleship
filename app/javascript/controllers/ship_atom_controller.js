import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="ship-atom"
export default class extends Controller {
  connect() {
  }

  click() {
    this.element.classList.toggle('hit')
  }
}
