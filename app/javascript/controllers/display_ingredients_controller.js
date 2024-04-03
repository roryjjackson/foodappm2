import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="display-ingredients"
export default class extends Controller {
  static targets = ["items", "form"]

  connect() {
    console.log('connect to display ingredients controller')

  }
}
