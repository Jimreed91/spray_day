// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
import Rails from '@rails/ujs'
import Turbolinks from 'turbolinks'
import * as ActiveStorage from '@rails/activestorage'
import 'channels'

//

// Bootstrap linked from js folder /..
// import '../js/bootstrap_js_files.js'

// Import the specific modules you may need (Modal, Alert, etc)

// require("jquery")
// require("@nathanvda/cocoon")

// require('@popperjs/core')
import 'bootstrap/dist/js/bootstrap'
import "bootstrap/dist/css/bootstrap";
import "@fortawesome/fontawesome-free/css/all"
// import "../stylesheets/application"
import "@oddcamp/cocoon-vanilla-js";

// require('bootstrap')
Rails.start()
Turbolinks.start()
ActiveStorage.start()
