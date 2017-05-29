jQuery(function(){
	
	var response = "";

	var ang = $('.ang_display').attr('data-ang');
	
	var operation = {
			changeReplamentsToRed:function(res){
				$.each(res, function(key,val){
					if(!val.replacements.length){
						return;
					}
					var line_no = val.line_no;
					var str = $('.line_'+line_no).text();
					$.each(val.replacements, function(k,v){
						str = str.replace(v.original_word,"<span class='red-color'>"+v.original_word+"</span>");
						$('.line_'+line_no).html(str);
					})
				})
			},
			setToOriginalState:function(res){
				$.each(res, function(key,val){
					if(!val.replacements.length){
						return;
					}
					var line_no = val.line_no;
					var str = $('.line_'+line_no).text();
					$.each(val.replacements, function(k,v){
						str = str.replace(v.original_word,v.original_word);
						$('.line_'+line_no).html(str);
					})
				})
			},
			showReplacements:function(res){
				$.each(res, function(key,val){
					if(!val.replacements.length){
						return;
					}
					var line_no = val.line_no;
					var str = $('.line_'+line_no).text();
					$.each(val.replacements, function(k,v){
						str = str.replace(v.original_word,"<span class='red-color'>"+v.replacement+"</span>");
						$('.line_'+line_no).html(str);
					})
				})
			},

		};	  
	

	   $.ajax({
				  method: "POST",
				  url: location.origin+"/index.php/fetch/replacements",
				  data: { angNo: ang }
				}).done(function(msg) {
				  	response = JSON.parse(msg);
						operation.changeReplamentsToRed(response);	

					$( ".red-color" ).hover(
					  function() {
					    	operation.showReplacements(response);
					  }, function() {
					    operation.setToOriginalState(response);
					  }
					);									  	
										  	

			  });

})