jQuery(function(){
	
	var response = "";
	$('.hide-replacements').hide();
	var ang = $('.ang_display').attr('data-ang');
	
	var operation = {
			setToOriginalState:function(res){
				$.each(res, function(key,val){
					if(!val.replacements.length){
						return;
					}
					var line_no = val.line_no;
					var str = $('.line_'+line_no).text();
					$('.line_'+line_no).html(val.text);
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
						// operation.changeReplamentsToRed(response);	

					$( ".show-replacements" ).on('click',
					  function() {
					    	operation.showReplacements(response);
					    	$(this).hide();
					    	$('.hide-replacements').show();
					  });
					$( ".hide-replacements" ).on('click',
					  function() {
					    	operation.setToOriginalState(response);
					    	$(this).hide();
					    	$('.show-replacements').show();
					  });			  	

			  });

})