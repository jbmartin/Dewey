# Filename: main.coffee

# Require.js allows us to configure shortcut alias
require.config
  paths:
    jquery: "libs/jquery"
    underscore: "libs/underscore"
    backbone: "libs/backbone"
    text: "libs/text"
    cs: "libs/cs"
    bootstrap: "libs/bootstrap"
    inspiritas: "libs/inspiritas"
    highcharts: "libs/highcharts"
    exporting: "libs/exporting"
    dropdown: "libs/bootstrap-dropdown"
    collapse: "libs/bootstrap-collapse"
    jstat: "libs/jstat"
    d3: "libs/d3"
    nod: "libs/nod"


  # Shim sets the configuration for third party scripts that are not AMD compatible
  shim:

    # Twitter Bootstrap jQuery plugins
    bootstrap: ["jquery"]
    dropdown: ["bootstrap"]
    collapse: ["bootstrap"]
    jstat: ["jstat"]
    highcharts:
      deps: ["jquery"]
      exports: "Highcharts"
    d3:
      exports: "d3"
    exporting:
      deps: ["highcharts"]
    inspiritas: ["highcharts", "jquery", "exporting"]
    nod: ["jquery", "bootstrap"]
    backbone:
      deps: ["underscore", "jquery"]
      exports: "Backbone"

    underscore:
      exports: "_"

# end shim
require [
  "jquery"
  "app"
  "highcharts"
  "d3"
  "exporting"
  "bootstrap"
  "dropdown"
  "collapse"],
  (
    $
    App
    Highcharts
    D3
    Exporting
  ) ->
    App.initialize()
