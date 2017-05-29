jQuery(function(){
	
	var response = "";

	var ang = $('.ang_display').attr('data-ang');
	   
	   $.ajax({
				  method: "POST",
				  url: location.origin+"/index.php/fetch/replacements",
				  data: { angNo: ang }
				}).done(function(msg) {
				  	response = JSON.parse(msg);
				  	console.log(response);

			  });
	
		
})