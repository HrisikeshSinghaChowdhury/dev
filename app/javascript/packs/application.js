// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import 'jquery'


Rails.start()
Turbolinks.start()
ActiveStorage.start()

import QIMap from "@qi/map"
import "@qi/map/dist/qimap.css";

$(document).ready(function(){ const qiMap = new QIMap({
      containerId: "mapPublicHome",
      baseLayer: ['OSM'],
      currentCountry: {
        "center": [
          1.155209e7,
          151997.9
        ],
        "minZoom": 5,
        "zoom": 12,
        "maxZoom": 25
      },
      liveTrackCheckDurationInMS: 10 * 60 * 1000,
      dataFormat: {
        lat: "lat",
        lon: "lon",
        time: "recorded_on"
      }

    });

    qiMap.createMap();
});


