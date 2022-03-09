// To get dist/index.js:
// npm run build
import jQuery from "jquery";
window.$ = window.jQuery = jQuery;
import "jquery.easing";
import "bootstrap";
import "../node_modules/bootstrap/dist/css/bootstrap.min.css";
import "../node_modules/bootstrap-icons/font/bootstrap-icons.css";
import WOW from 'wow.js'
window.WOW = WOW
import "animate.css";
import { tns } from "../node_modules/tiny-slider/src/tiny-slider";
window.tns = tns
import "lazysizes";
import "../css/style.css";
import { init } from "./main.js";
init($);
