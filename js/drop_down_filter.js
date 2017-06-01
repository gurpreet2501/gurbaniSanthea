jQuery(function(){

	 var parsedJson = '';
	 var output = "";
	 var originalWord = "";
	 $('#field-original_word').focusout(function(){
	 		originalWord = $(this).val();
	 
			 $('.ang_select_on_rep_page').change(function(){
				selectedAng = ($(this).val());
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
	 			var str = "";
	 			try{
		 			$.each(parsedJson,function(key,val){
		 				 str = "<option value="+val.id+">Line No.:"+val.line_no+",  "+val.text+"</option>";
		 				
		 				 
		 				 if(str.search(originalWord) > 0){
		 				 		str = "<option style='color:red' value="+val.id+"><span class='red'>WORD FOUND</span> Line No.:"+val.line_no+",  "+val.text+"</option>";
		 				 }else{
		 				 	str = "<option value="+val.id+">Line No.:"+val.line_no+",  "+val.text+"</option>";
		 				 }
		 				 				 
		 				 output = output + str ;
		 			})
	 			}catch(err){

	 			}
	 			$('select.lines_result').html(output);
	 		}
	 };

 });
	


})