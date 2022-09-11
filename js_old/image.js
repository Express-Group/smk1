// JavaScript Document
$(document).ready(function()
{
	
	$(document.body).on('click','#reset_image',function() {
		
	image_type = $("input:radio[name='image_type']:checked").val();
		switch(image_type) {
			case "image_600_390":
			crop_box_size = {'left': 50,'top':50,'height':390,'width':600};
			
			break;
			
			case "image_600_300":
			crop_box_size = {'left': 50,'top':50,'height':300,'width':600};
				
			break;
			
			case "image_100_65":
			crop_box_size = {'left': 50,'top':50,'height':65,'width':100};
				
			break;
			
			case "image_150_150":
			crop_box_size = {'left': 50,'top':50,'height':150,'width':150};
			
			break;
			
			default:
			crop_box_size = {'left': 50,'top':50,'height':390,'width':600};
			
			break;
			
		}
		
		options = {};
		
		options.built = function () {
			 $('.img-container > img').cropper('setCropBoxData', crop_box_size);
		  };
	
		options['dragCrop'] = false;
		options['cropBoxResizable'] = false;
		
		 $('.img-container > img').cropper('destroy').cropper(options);
		
	});
	
	$(document.body).on('click','#image_resize_id',function() {
		
		Checked_value = $(this).val();
		
		if($(this).prop('checked') == true) {
			common_resize_process(Checked_value);
		} else {
			
			$("#loading_msg").html('Please wait while remove image is in progress')
			$("#commom_loading").show();
				
			
				$("#"+Checked_value).attr('src','');
				$("#"+Checked_value).hide();
				
			setTimeout(function(){
				$("#loading_msg").html('')
				$("#commom_loading").hide();
			},1000);
		}
	});
	
	$target =  $('#crop_data');
	
	$(document.body).on('click','#image_type_id',function(){
		
		
		switch($(this).val()) {
			case "image_600_390":
			crop_box_size = {'left': 50,'top':50,'height':390,'width':600};
			
			break;
			
			case "image_600_300":
			crop_box_size = {'left': 50,'top':50,'height':300,'width':600};
				
			break;
			
			case "image_100_65":
			crop_box_size = {'left': 50,'top':50,'height':65,'width':100};
				
			break;
			
			case "image_150_150":
			crop_box_size = {'left': 50,'top':50,'height':150,'width':150};
			
			break;
			
			default:
			crop_box_size = {'left': 50,'top':50,'height':390,'width':600};
			
			break;
			
		}
		
		/*if($(this).val() == 'image_600_390') crop_box_size = {'left': 50,'top':50,'height':390,'width':600};
		 else crop_box_size = {'left': 50,'top':50,'height':600,'width':300};*/
		 
		options = {};
		
		options.built = function () {
			 $('.img-container > img').cropper('setCropBoxData', crop_box_size);
		  };
	
		options['dragCrop'] = false;
		options['cropBoxResizable'] = false;
		
		 $('.img-container > img').cropper('destroy').cropper(options);
		
		});
	
	// Apply Crop Functioanlity 
		$("#apply_crop").click(function() {
				
				 $("#body_loading").show();
				
				image_type = $("input:radio[name='image_type']:checked").val();
				result = $('.img-container > img').cropper('getData');
				
				if ($.isPlainObject(result)) {
					 
					  try {
						  
				var crop_data = JSON.stringify(result);
				
				var crop_image_id 				= $("#crop_image_id").val();
				var crop_alt					= $("#crop_alt").val();
				var crop_caption				= $("#crop_caption").val();
				var image_content_id			= $("#image_content_id").val();
				var page_name 					= $("#page_name").val();
				
				
				switch(image_type) {
					case "image_600_390":
					var crop_height			= 390;
					var crop_width			= 600;
					break;
					
					case "image_600_300":
					var crop_height			= 300;
					var crop_width			= 600;
					break;
					
					case "image_100_65":
					var crop_height			= 65;
					var crop_width			= 100;
					break;
					
					case "image_150_150":
					var crop_height			= 150;
					var crop_width			= 150;
					break;
					
					default:
					var crop_height			= 390;
					var crop_width			= 600;
					break;
					
				}
				
				if(page_name == 'article_image_processing')
					var image_imagetype = 1;
				else if(page_name == 'gallery_image_processing')
					var image_imagetype = 3;
				else if(page_name == 'video_image_processing')
					var image_imagetype = 4;
				else if(page_name == 'audio_image_processing')
					var image_imagetype = 5;
				else if(page_name == 'resource_image_processing')
					var image_imagetype = 6;
				else 
					var image_imagetype = 2;
				
				
				
						var postdata = "crop_image_id="+crop_image_id+"&crop_data="+crop_data+"&crop_alt="+crop_alt+"&crop_caption="+crop_caption+"&crop_height="+crop_height+"&crop_width="+crop_width+"&image_type="+image_type+"&content_id="+image_content_id+"&image_imagetype="+image_imagetype;
					$.ajax({
						url: base_url+folder_name+"/common/crop_image", // Url to which the request is send
						type: "POST",             // Type of request to be send, called as method
						data:  postdata,
						dataType: "json",
						async: true, 
						success: function(data)   // A function to be called if request succeeds
						{
							if(data.status == 'success') {
								
								 var number = 1 + Math.floor(Math.random() * 6000000000);
								$("#"+image_type).attr('src',data.source+"?dummy="+number);
								$("#"+image_type).show();	
							
								$("input:checkbox[value='"+image_type+"']").attr('checked',false);
								$("#body_loading").hide(); 
								
							} else {
								alert(data.msg);
								$("#body_loading").hide(); 
							}
						}
					});  
					
					 } catch (e) {
						alert(e.message);
						$("#body_loading").hide(); 
					  }
					 
				 } else {
					 alert("Invalid Object Value");
					 $("#body_loading").hide(); 
				 } 
					
			});
			
	// Apply Crop Functioanlity 
		
		
			// Apply Resize Functioanlity 
	
			function common_resize_process(image_type) {
				
				$("#loading_msg").html('Please wait while resize is in progress')
				$("#commom_loading").show();
				
				result = $('.img-container > img').cropper('getData');
				
				if ($.isPlainObject(result)) {
					 
					  try {
						  
				var crop_data = JSON.stringify(result);
				
				var crop_image_id 			= $("#crop_image_id").val();
				var crop_alt				= $("#crop_alt").val();
				var crop_caption			= $("#crop_caption").val();
				var image_content_id		= $("#image_content_id").val();
				var page_name 					= $("#page_name").val();
				
				switch(image_type) {
					case "image_600_390":
					var crop_height			= 390;
					var crop_width			= 600;
					break;
					
					case "image_600_300":
					var crop_height			= 300;
					var crop_width			= 600;
					break;
					
					case "image_100_65":
					var crop_height			= 65;
					var crop_width			= 100;
					break;
					
					case "image_150_150":
					var crop_height			= 150;
					var crop_width			= 150;
					break;
					
					default:
					var crop_height			= 390;
					var crop_width			= 600;
					break;
					
				}
				
						if(page_name == 'article_image_processing')
					var image_imagetype = 1;
				else if(page_name == 'gallery_image_processing')
					var image_imagetype = 3;
				else if(page_name == 'video_image_processing')
					var image_imagetype = 4;
				else if(page_name == 'audio_image_processing')
					var image_imagetype = 5;
				else if(page_name == 'resource_image_processing')
					var image_imagetype = 6;
				else 
					var image_imagetype = 2;
				
						var postdata = "crop_image_id="+crop_image_id+"&crop_data="+crop_data+"&crop_alt="+crop_alt+"&crop_caption="+crop_caption+"&crop_height="+crop_height+"&crop_width="+crop_width+"&image_type="+image_type+"&content_id="+image_content_id+"&image_imagetype="+image_imagetype;;
					$.ajax({
						url: base_url+folder_name+"/common/resize_image", // Url to which the request is send
						type: "POST",             // Type of request to be send, called as method
						data:  postdata,
						dataType: "json",
						async: true, 
						success: function(data)   // A function to be called if request succeeds
						{
							if(data.status == 'success') {
								
								var number = 1 + Math.floor(Math.random() * 6000000000);
								$("#"+image_type).attr('src',data.source+"?dummy="+number);
								
								$("#"+image_type).show();	
				
								$("#loading_msg").empty();
								$("#commom_loading").hide();
								
							} else {
								alert(data.msg);
								$("#loading_msg").empty();
								$("#commom_loading").hide();
							}
						}
					});  
					
					 } catch (e) {
						alert(e.message);
						$("#loading_msg").empty();
								$("#commom_loading").hide();
					  }
					 
				 } else {
					 alert("Invalid Object Value");
					$("#loading_msg").empty();
								$("#commom_loading").hide(); 
				 } 
					
			} 
			
	// Apply Size Functioanlity 
	
			$("#add_to_edit").click(function() {
				var inst = $.remodal.lookup[$('[data-remodal-id=modal1]').data('remodal')];
					if(!inst) {
						$('[data-remodal-id=modal1]').remodal().close();
					 } else{
						  inst.close();
	 				}
			});
			
		$("#addimagelibrary").change(function() {
			
			$("#LoadingSelectImageLocal").show();
			
				$("#ImageForm").ajaxForm({
				async: true, 
				dataType: "json",
				beforeSubmit:function(){
					
				},
				success:function(data){
					
				 $.each(data,function(key,value){
						
					$("#ImageContainerSet").append('<div class="ImageClose" id="SetImage'+data[key].image_id+'"><img src="'+data[key].image+'" /><img  id="ImageRemove" data-image_id="'+data[key].image_id+'" src="'+image_url+'images/admin/close-button.png" /></div>');
					 
					  SelectImage[data[key].image_id] = {
						  'image_id' 			: data[key].image_id,
						  'image_caption' 		: data[key].caption,
						  'image_alt' 			: data[key].alt,
						  'image_content_id' 	: '',
						 'image1_type' 	: data[key].image1_type,
						  'image2_type' 	: data[key].image2_type,
						  'image3_type' 	: data[key].image3_type,
						  'image4_type' 	: data[key].image4_type

						  };
						  $("#image_data").val(JSON.stringify(SelectImage));
						  $("#LoadingSelectImageLocal").hide();
						  
					});
					
					loadingcropimagesection();
					get_slider_images();
					
				},
				error:function(){
					
				} }).submit(); 
			
		});
	

	function valid_crop_resize_image() {
		
		 bool = true;
 
 $.each(SelectImage,function(key,value){
	
	 if(value.image1_type != 1 && value.image1_type != 2) {
		 bool = false;
	 }
	  if(value.image2_type != 1 && value.image2_type != 2) {
		 bool = false;
	 }
	  if(value.image3_type != 1 && value.image3_type != 2) {
		 bool = false;
	 }
	  if(value.image4_type != 1 && value.image4_type != 2) {
		 bool = false;
	 }

 });
 
 return bool;
}
 

	$("#active_id").click(function() {
		
			var confirm_status = confirm('Are you sure you want to save the images?');
			if(confirm_status==true) {
				
			$("#loading_msg").html('Please wait while saving the images');
			$("#commom_loading").show();	

			TempImageId = $("#crop_image_id").val();

			postdata = "tempimageid="+TempImageId+"&save_status=1";
		
			$.ajax({
									url: base_url+folder_name+"/common/update_temp_save_status", // Url to which the request is send
									type: "POST",             // Type of request to be send, called as method
									data:  postdata,
									dataType: "json",
									async: true, 
									success: function(data)   // A function to be called if request succeeds
									{
										 
										if(data.status == 'success') {
											window.top.close();
										}
									}
					});
						
			} 
	 });
	 
	 	$("#inactive_id").click(function() {
			
			var confirm_status = confirm('Are you sure you want to cancel the images?');
			if(confirm_status==true) {
				
			$("#loading_msg").html('Please wait while cancelling the images');
			$("#commom_loading").show();	

			TempImageId = $("#crop_image_id").val();

			postdata = "tempimageid="+TempImageId+"&save_status=0";
		
			$.ajax({
									url: base_url+folder_name+"/common/update_temp_save_status", // Url to which the request is send
									type: "POST",             // Type of request to be send, called as method
									data:  postdata,
									dataType: "json",
									async: true, 
									success: function(data)   // A function to be called if request succeeds
									{
										 
										if(data.status == 'success') {
											window.top.close();
										}
									}
					});
						
			} 
	 });
			 
 });
 
 function Flash_message(msg,type) {
		
		$("#flash_msg_id").removeClass('SessionError');
		$("#flash_msg_id").removeClass('SessionSuccess');
		
		$("#flash_msg_id").html(msg);
		$("#flash_msg_id").addClass(type);
					
		
		$("#flash_msg_id").show();
					
		$("#flash_msg_id").slideDown(function() {
			setTimeout(function() {
			$("#flash_msg_id").slideUp();
			}, 1000);
		});
		
	}