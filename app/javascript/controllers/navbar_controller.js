import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["sidebar", "overlay", "dropdown", "tooltip"];
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

  tooltipShow(event) {
    const tooltip = this.tooltipTarget;
    const name = event.currentTarget.dataset.tooltip;

    const rect = event.currentTarget.getBoundingClientRect();
    const x = rect.left + window.scrollX + 130;
    const y = rect.top + window.scrollY;

    tooltip.classList.remove("hidden");
    tooltip.style.left = `${x}px`;
    tooltip.style.top = `${y}px`;
    tooltip.textContent = name;
  }

  tooltipHide() {
    this.tooltipTarget.classList.add("hidden");
  }
}
