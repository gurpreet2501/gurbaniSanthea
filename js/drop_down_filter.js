jQuery(function(){
	 var parsedJson = '';
	 var output = "";
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
				  	output = "";
				    parsedJson = (JSON.parse(msg));
				    fetch.formatResults(parsedJson)
				  });
				  
	 		},

	 		'formatResults':function(parsedJson){
	 			try{
		 			$.each(parsedJson,function(key,val){
		 				 output = output + "<option value="+val.id+"> Line No.:"+val.line_no+",  "+val.text+"</option>" ;
		 			})
	 			}catch(err){

	 			}
	 			$('select.lines_result').html(output);
	 		}
	 };

	


})