import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["sidebar", "overlay", "dropdown"];
  static values = { transitionDuration: { type: Number, default: 200 } };

  toggle() {
    this.sidebarTarget.classList.toggle("translate-x-full");
    this.overlayTarget.classList.toggle("opacity-0");
    this.overlayTarget.classList.toggle("pointer-events-none");
  }

  close() {
    this.sidebarTarget.classList.add("translate-x-full");
    this.overlayTarget.classList.add("opacity-0", "pointer-events-none");
  }

  showDropdown() {
    this.dropdownTarget.classList.remove("hidden");
    requestAnimationFrame(() => {
      this.dropdownTarget.classList.remove("opacity-0", "scale-95");
      this.dropdownTarget.classList.add("opacity-100", "scale-100");
    });
  }
  hideDropdown() {
    this.dropdownTarget.classList.remove("opacity-100", "scale-100");
    this.dropdownTarget.classList.add("opacity-0", "scale-95");

    setTimeout(() => {
      if (!this.dropdownTarget.matches(":hover")) {
        this.dropdownTarget.classList.add("hidden");
      }
    }, this.transitionDurationValue);
  }
}
