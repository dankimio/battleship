import { Controller } from '@hotwired/stimulus'

// Connects to data-controller="board-atom"
export default class extends Controller {
  connect() { }

  click() {
    this.element.classList.toggle('miss')
  }
}
