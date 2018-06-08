import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Find your cocktail!", "What are their ingredients?"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
