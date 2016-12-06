window.globe = function globe(){
  var viewer = new Cesium.Viewer('cesiumContainer');
}

$(function() {
  if ( $("#cesiumContainer").length > 0 ) {
    globe();
  }
})
