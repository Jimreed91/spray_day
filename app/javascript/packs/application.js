// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
import Rails from '@rails/ujs'
import Turbolinks from 'turbolinks'
import * as ActiveStorage from '@rails/activestorage'
import 'channels'
// Bootstrap linked from js folder /..
// import '../js/bootstrap_js_files.js'

import 'bootstrap'

// Import the specific modules you may need (Modal, Alert, etc)
// import { Tooltip, Popover } from 'bootstrap'
require('@popperjs/core')

Rails.start()
Turbolinks.start()
ActiveStorage.start()

// The stylesheet location we created earlier
// require('../stylesheets/application.scss')

// If you're using Turbolinks. Otherwise simply use: jQuery(function () {
// document.addEventListener('turbolinks:load', () => {
//   // Both of these are from the Bootstrap 5 docs
//   const tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
//   const tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
//     return new Tooltip(tooltipTriggerEl)
//   })

//   const popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'))
//   const popoverList = popoverTriggerList.map(function (popoverTriggerEl) {
//     return new Popover(popoverTriggerEl)
//   })
// })
