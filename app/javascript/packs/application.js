// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
// require('util.js')

// 202010 - GAR - Chart.js
require("chartkick")
require("chart.js")

// 202010 - GAR - Highcharts
require("chartkick").use(require("highcharts"))



// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import $ from 'jquery';
import "bootstrap";
// import initTicketCable from '../channels/ticket_channel'
// import btn_newman from '../components/sidebar';

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';


//  initTicketCable();
// $('#myTab a').on('click', function (e) {
//     e.preventDefault()
//     $(this).tab('show')
// });
document.addEventListener('turbolinks:load', function () {
    // Add your code
	console.log("hola manola")
	const flashdone = document.querySelector("#button_to_answer");
	const flashcardCopy = document.querySelector("#hidden_answer");
	console.log(flashdone)
	console.log(flashcardCopy)
	flashdone.addEventListener("click",(e) =>{
		const userAnswer = document.querySelector("#userAnswer");
		flashcardCopy.innerText = ''
		flashcardCopy.insertAdjacentText("beforeend",userAnswer.value)
		// console.log(flashcardAnswer.innerText);
	})

})
    

// 
// //   e.currentTarget.setAttribute('aria-hidden', 'true');
//     console.log("'casi casi'");
// })
// // document.addEventListener('turbolinks:load', () => {
// // });
