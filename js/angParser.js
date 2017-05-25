jQuery(function(){
	var ang = $('.ang_display').attr('data-ang');
	console.log();
	$.ajax({
	  method: "POST",
	  url: location.origin+"/index.php/fetch/replacements",
	  data: { ang_no: ang}
	})
	  .done(function( msg ) {
	   console.log(msg);
	  });
});