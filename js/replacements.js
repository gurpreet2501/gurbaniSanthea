jQuery(function(){

	var ang = $('.ang_display').attr('data-ang');
	var data = {
		getReplacements:function(ang){
				
				return $.ajax({
				  method: "POST",
				  url: location.origin+"/index.php/fetch/replacements",
				  data: { angNo: ang }
				})
				  .done(function( msg ) {
				    var obj = JSON.parse(msg);
				    data.changeColor(obj);

				    $('.red-color').hover(
						  function() {
						    data.replaceText(obj);
						  }, function() {
						  	
						    data.revertOriginal(obj);
						  }
						);

				    $('.red-color').hover(function(){
				    	
				    });
			  });
				  
		},
		replaceText:function(obj){
			$.each(obj, function(key, value){
				// console.log(value);
				var nkey = ++key;
				
				if(value.line_no == 2){
					
					$.each(value.replacements, function(ky,v){
						var str = $('.line_2').text();
						str = str.replace(v.original_word, '<span class="red-color">'+v.replacement+'</span>');
						$('.line_2').html(str);
					})
				}
			})
		},

		revertOriginal:function(obj){
			$.each(obj, function(key, value){
				// console.log(value);
				var nkey = ++key;
				
				if(value.line_no == 2){
					$.each(value.replacements, function(ky,v){
						var str = $('.line_2').text();
						str = str.replace(v.replacement, v.original_word);
						$('.line_2').html(str);
					})
				}
			})
		},

		changeColor:function(obj){
			$.each(obj, function(key, value){
				// console.log(value);
				var nkey = ++key;
				
				if(value.line_no == 2){
					$.each(value.replacements, function(ky,v){
						var str = $('.line_2').text();
						str = str.replace(v.original_word, '<span class="red-color">'+v.original_word+'</span>');
						$('.line_2').html(str);
					})
				}
			})
		},

	};	

	data.getReplacements(ang);
	
})