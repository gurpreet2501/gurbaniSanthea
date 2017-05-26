jQuery(function(){
	 
	 $('.ang_select_on_rep_page').change(function(){
		selectedAng = ($(this).val());
		console.log(location.origin);
		fetch.angLines(selectedAng);
	})

	 var fetch = {
	 		'angLines' : function(angNo){
				$.ajax({
				  method: "POST",
				  url: location.origin+'/index.php/fetch/angLines',
				  data: { ang_no: angNo }
				})
				  .done(function( msg ) {
				    console.log(msg);
				  });
				  
	 		}
	 };

	


})