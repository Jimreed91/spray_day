// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
import Rails from '@rails/ujs'
import Turbolinks from 'turbolinks'
import * as ActiveStorage from '@rails/activestorage'
import 'channels'
//
// import 'bootstrap'
// Bootstrap linked from js folder /..
// import '../js/bootstrap_js_files.js'

// Import the specific modules you may need (Modal, Alert, etc)
// import { Tooltip, Popover } from 'bootstrap'
require('@popperjs/core')
import 'bootstrap/dist/js/bootstrap'
import "bootstrap/dist/css/bootstrap";
import "../../assets/stylesheets/application.scss"
// require('bootstrap')
Rails.start()
Turbolinks.start()
ActiveStorage.start()
