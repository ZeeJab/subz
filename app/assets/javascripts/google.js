var map;
var canvas;


var pinColor = "FE7569";
var pinImage = new google.maps.MarkerImage("http://chart.apis.google.com/chart?chst=d_map_pin_letter&chld=%E2%80%A2|" + pinColor,
    new google.maps.Size(21, 34),
    new google.maps.Point(0,0),
    new google.maps.Point(10, 34));
var pinShadow = new google.maps.MarkerImage("http://chart.apis.google.com/chart?chst=d_map_pin_shadow",
    new google.maps.Size(40, 37),
    new google.maps.Point(0, 0),
    new google.maps.Point(12, 35));

var marker = new google.maps.Marker({
    position: new google.maps.LatLng(0,0), 
    map: map,
    icon: pinImage,
    shadow: pinShadow
});

$(function(){

});

function display_map(lat, long, zoom)
{
 var mapOptions = {
   center: new google.maps.LatLng(lat, long),
   zoom: zoom,
   mapTypeId: google.maps.MapTypeId.ROADMAP
 };

 canvas = $('#map_canvas')[0];
 map = new google.maps.Map(canvas, mapOptions);
}

function add_marker(lat, long, title)
{
 var latlng = new google.maps.LatLng(lat, long);
 var marker = new google.maps.Marker({position: latlng, map: map, title:title});
}

