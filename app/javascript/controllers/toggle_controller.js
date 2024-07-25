import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["togglableElement"]

  connect() {
    console.log("hi from toggle")
  }

  fire(event) {
    const button = event.currentTarget
    const dayIndex = button.getAttribute("data-day-index")

    function roundUp(number) {
      return Math.ceil(number / 3);
    }

    this.togglableElementTargets.forEach((element) => {
      const recipeIndex = element.getAttribute("data-recipe-index")

      console.log("Recipe index:", Math.ceil(recipeIndex / 3) + " Day index:", dayIndex)

      if (roundUp(recipeIndex) == dayIndex) {
        element.classList.remove("d-none")
        console.log("first if element", element)
      } else {
        console.log("second if element", element)
        element.classList.add("d-none")
      }

    })

  }
}
