require("@rails/ujs").start()
// require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("jquery")
require("packs/bootstrap.min")
require("packs/demo")
require("packs/customer")
require("packs/jquery.bootstrap.wizard")
require("packs/jquery.validate.min")
require("packs/paper-bootstrap-wizard")
require("packs/jquery-2.2.4.min")

import 'bootstrap'

(function($) {
  "use strict";
  var path = window.location.href;
      $("#layoutSidenav_nav .sb-sidenav a.nav-link").each(function() {
          if (this.href === path) {
              $(this).addClass("active");
          }
      });

  $("#sidebarToggle").on("click", function(e) {
      e.preventDefault();
      $("body").toggleClass("sb-sidenav-toggled");
  });
})

