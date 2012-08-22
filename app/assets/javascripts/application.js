// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery.remotipart
//= require twitter/bootstrap
//= require jquery.ui.core
//= require jquery.ui.autocomplete
//= require jquery.ui.draggable
//= require jquery.ui.droppable
//= require jquery.Jcrop
//= require autocomplete-rails
//= require highcharts
//= require cocoon
//= require rails.validations
//= require jquery.tokeninput
//= require best_in_place
//= require_tree .
// Search form.  

$(document).ready(function(){
    $('textarea').autosize();  
});

$("input.date_picker").datepicker()
      .on('show', function(ev){                 
      var today = new Date();
      var t = today.getMonth() + "-" + today.getDate() + "-" + today.getFullYear();
      $('input.date_picker').data({date: t}).datepicker('update');
  });
  
  
function toggleDiv(divId) {
   $("#"+divId).slideToggle('slow');
   $("#"+divId+"-form").focus();
}

function hideDiv(divId) { 
	$("#"+divId).toggle(); 
} 

(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=267610973277613";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));