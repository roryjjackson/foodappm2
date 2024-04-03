import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="searchable-dropdown"
export default class extends Controller {
  connect() {
    console.log('connected to searchable dropdown stimulus controller')
  }
}
