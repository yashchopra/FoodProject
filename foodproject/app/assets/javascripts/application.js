// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .
//= require moment
//= require bootstrap-datepicker
//= require bootstrap-datetimepicker


$(function() {
  $(document).on('change', '.business_type', function() {
  	var val = $('.business_type').val();

    if (val == "Business")
    {     
    	$('.table_body').show()
    	$('.charity_display').hide();
		$('.business_display').show();	
    }
    else if (val == "Food Distribution Center") 
    {
    	$('.table_body').show()
    	$('.charity_display').show();
		$('.business_display').hide();
	} else
	$('.table_body').hide()
  });
});


$(function() {
  $(document).ready(function() {
  	var val = $('.business_type').val();
    if (val == "Business")
    {     
    	$('.table_body').show()
    	$('.charity_display').hide();
		$('.business_display').show();	
    }
    else if (val == "Food Distribution Center") 
    {
    	$('.table_body').show()
    	$('.charity_display').show();
		$('.business_display').hide();
	} else
	$('.table_body').hide()
  });
});



