<?php $script_url = image_url; ?>
<link href="<?php echo $script_url; ?>css/admin/bootstrap.min_3_3_4.css" rel="stylesheet" type="text/css">	
<link href="<?php echo $script_url; ?>css/admin/bootstrap-datetimepicker.css" rel="stylesheet" type="text/css" />
<link href="<?php echo $script_url; ?>css/admin/jquery.datetimepicker.css" rel="stylesheet" type="text/css" />
<script src="<?php echo $script_url; ?>js/jquery-1.11.3.min.js" type="text/javascript"></script>
<?php /*?><link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>css/admin/w2ui-fields-1.0.min.css"><?php */?>
<script type="text/javascript" src="<?php echo $script_url; ?>js/moment-with-locales.js"></script>
<script type="text/javascript" src="<?php echo $script_url; ?>js/bootstrap-datetimepicker.js"></script>
<!--<script type="text/javascript" src="<?php echo $script_url; ?>js/bootstrap/bootstrap-hover-dropdown.min.js"></script>-->	
<!--<script type="text/javascript" src="<?php echo $script_url; ?>js/bootstrap/bootstrap.min.js"></script>-->
<script type="text/javascript" src="<?php echo $script_url; ?>js/jquery.datetimepicker.js"></script>
<!--<script type="text/javascript" src="<?php echo $script_url; ?>js/jquery.style-my-tooltips.js"></script>-->

<script>
function get_date(input) {
if(input == '') {
return false;
}	else {
// Split the date, divider is '/'
var parts = input.match(/(\d+)/g);
return parts[2]+'/'+parts[1]+'/'+parts[0];
} 
}

jQuery(function(){
 jQuery('#date_timepicker_start').datetimepicker({
  format:'d-m-Y',
  onShow:function(ct){
   this.setOptions({
	   maxDate:get_date($('#date_timepicker_end').val())?get_date($('#date_timepicker_end').val()):false,
   })
  },
  timepicker:false
 });
 jQuery('#date_timepicker_end').datetimepicker({
  format:'d-m-Y',
  onShow:function(ct){
   this.setOptions({
	   minDate:get_date($('#date_timepicker_start').val())?get_date($('#date_timepicker_start').val()):false,
   })
  },
  timepicker:false
 });
});

</script>



<script type="text/javascript" src="<?php echo $script_url; ?>js/jquery.dataTables.js"></script>
<script type="text/javascript" src="<?php echo $script_url; ?>js/w2ui-fields-1.0.min.js"></script>
<link href="<?php echo $script_url; ?>css/admin/jquery.dataTables.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="<?php echo $script_url; ?>css/admin/w2ui-fields-1.0.min.css">







<script>
$(document).ready(function() 
{
	$("#search_based_check").change(function()
   {
    if(this.checked) 
     {
     $("#checkin_checkout_div").show();
    } 
    else 
    {
		$("#date_timepicker_start").val('');
     $("#date_timepicker_end").val('');
     $("#checkin_checkout_div").hide();
    }
    $("#checkin_id").val('');
        $("#checkout_id").val('');
   });
	
	
	
});

</script>



</head>
<body>

<div class="Container">
	<div class="BodyWhiteBG">
		<div class="BodyHeadBg Overflow clear">
			<div class="FloatLeft BreadCrumbsWrapper ">
				<div class="breadcrumbs">Dashboard > <?php echo $title; ?></div>
 					<h2><?php echo $title; ?></h2>
			</div>
            <?php $data['Menu_id'] = get_menu_details_by_menu_name("Template logs"); ?>
            
		</div>
			<div class="Overflow DropDownWrapper">
            <?php 
if($this->session->flashdata("success"))
{     
?>
 <div class="FloatLeft SessionSuccess" id="flash_msg_id"><?php echo $this->session->flashdata("success");?></div>
<?php
}
?> 
<?php 
if($this->session->flashdata("success_delete"))
{     
?>
 <div class="FloatLeft SessionSuccess" id="flash_msg_id"><?php echo $this->session->flashdata("success_delete");?></div>
<?php
}
?> 
<?php 
if($this->session->flashdata("fail_delete"))
{     
?>
 <div class="FloatLeft SessionSuccess" id="flash_msg_id"><?php echo $this->session->flashdata("fail_delete");?></div>
<?php
}
?> 
  				<div class="container">
    				<div id="" class="row AskPrabuCheckBoxWrapper">
            			<ul class="AskPrabuCheckBox FloatLeft">
                        
                        
        					<!--<li class="has-pretty-child">
                            <div class="clearfix prettycheckbox labelright  red"><input type="checkbox" id="search_based_check"  class="myClass" value="yes" name="answer"><a class=" " href="#"></a>
<label for="search_based_check">Search Based on Date Range</label></div><a href="#" class=""></a>
    						</li>-->
    
     
       <li>
<p class="CalendarWrapper" id="checkin_checkout_div"><label for="search_based_check">Search Based on Date Range</label><input type="text" value="" id="date_timepicker_start" readonly placeholder="Start Date"><input type="text" value="" id="date_timepicker_end" readonly placeholder="End Date"></p>
 </li>
           
            
                    	</ul>
    			</div>
			</div>

<div class="FloatLeft Module02">
<div class="FloatLeft w2ui-field">
<select id="ddFilterBy" name="ddFilterBy" placeholder="Sort By: All" class="controls">
<option value="All">Search By- All</option>
<option value="1">Section Name</option>
<option value="2">Publish By</option>

</select>
</div>

<div class="FloatLeft w2ui-field">
<select id="ddStatus" name="ddStatus" class="controls">
<!--<option value="">- Status -</option>-->
<option value=0>PageType- All</option>
<option value=1>Section</option>
<option value=2>Article</option>
</select>
</div>
			
<div class="FloatLeft"><input type="search" placeholder="Search" class="SearchInput" name="txtSearch" id="txtSearch"></div>

<button class="btn btn-primary" type="button" id="rolemaster_search">Search</button>
<button class="btn btn-primary" type="button" id="clear_search">Clear Search</button>
</div>




<p id="srch_error" style="clear: left; color:#F00;margin:0"></p>




<div id="container_datatable" class="display"  style="width:100%; float:left; ">
	<div id="work_list" class="display">
    <div class="role-dpt">
    <table id="example" class="display" cellspacing="0" width="100%">
			<thead>
				<tr>
					<!--<th>User ID</th>-->
                    <th>Section Name</th>
					<th>Page Type</th>
					<th>Previous Version</th>
					<th>Previous Version By</th>
					<th>Previous Version publish on</th>
                    <th>Current Version</th>
					<th>Current Version By</th>
					<th>Current Version publish on</th>
                   
				</tr>
			</thead>
            </table>
            </div>
            
		
 	</div>           
</div>

<script>
$(document).ready(function() {
	$('#example').dataTable( 
{
} );
	
	rolemaster_datatable();
				 
		$('#txtSearch').keypress(function (e) {
		if($.trim($('#txtSearch').val()) != '') {
		 var key = e.which;
		 if(key == 13)  {
			 rolemaster_datatable();
		  }  
		}
	});
	
	$("#clear_search").click(function() {
	$("#ddFilterBy").val('All');
	$("#ddStatus").val('0');
	$("#txtSearch").val('');
	$("#date_timepicker_start").val('');
	$("#date_timepicker_end").val('');
	$("#srch_error").html('').hide();
	//$("#article_status").val('');
	
	rolemaster_datatable();
	});
		 
 
			
	});
	
	
	
	function rolemaster_datatable() {
		
	var fromdate=$( "#date_timepicker_start").val();
	var todate=$( "#date_timepicker_end").val();
	var filterby=$( "#ddFilterBy" ).val();
	var status=$( "#ddStatus" ).val();
	var searchbox=$( "#txtSearch").val();
	var searchondate=$("#check1:checked").val();
	
    $('#example').dataTable( {
		 
		
		/*fnInitComplete : function() {
      if ($(this).find('tbody tr').length<=1) {
         $(this).parent().hide();
      }
   } */
		
		
        "processing": true,
        "bServerSide": true,
		 "bDestroy": true,
		 "autoWidth": false,
		  "searching": false,
		"iDisplayLength": 10,
		
				oLanguage: {
        sProcessing: "<img src='<?php echo base_url(); ?>images/admin/loadingroundimage.gif' style='width:40px; height:40px;'>"
    },

		"aoColumnDefs": [
          { 'bSortable': false, 'aTargets': [ -1 ] }
       ],

		
		"fnDrawCallback":function(oSettings )
		{
			
			   $("html, body").animate({ scrollTop: 0 }, "slow");
			 
   			//alert();
		   if($('span a.paginate_button').length <= 1) 
		   {
			 $("#example_paginate").hide();
			// $("#example_length").hide();
		   } else 
		   {
			 $("#example_paginate").show();
			 $("#example_length").show();
		   }
		   if($(this).find('tbody tr').text()== "No matching records found")
		   {
			  $(oSettings.nTHead).hide(); 
			  $('.dataTables_info').hide();
			  $("#example_length").hide();
			  // $("#example").find('tbody tr').append($('<td class="BackArrow"><a href="<?php  echo base_url(); ?>niecpan/rolemaster_manager" data-toggle="tooltip" title="Back to list"><i class="fa fa-reply fa-2x"></i></a></td>'));
	
	 $("#example").find('tbody tr').html($('<td valign="top" colspan="10" class="dataTables_empty BackArrow">No matching records found <a href="" data-toggle="tooltip" title="Back to list"><i class="fa fa-reply fa-2x"></i></a></td>'));
	
	
		   }
		   else
		   {
			   
			   $(oSettings.nTHead).show(); 
		   }
		  
		},
		
		"ajax": {
            "url": "<?php echo base_url().folder_name ?>/template_logs/template_datatable",
			"type" : "POST",
			"data" : {
		  "from_date" : fromdate, "to_date" : todate, "filterby" : filterby,"searchtxt" : searchbox ,"searchondate": searchondate,"status":status
			},
	 	/*success:function(data)
		{
       
      	 	alert(data);
    	}*/
			
		 },
    } );
		
	}
		
	

</script>
<script>
$(document).ready(function()
{
	
		$('body').keypress(function (e) {
			
			if(e.which == 13) {
				$("#rolemaster_search").click();
			}
			
		});
	
	$("#rolemaster_search").click(function()
 	{
	// console.log('ppp');
  		if($('#ddFilterBy').val() != 'All')
  		{
   			if($('#txtSearch').val() == '')
   			{
    			$("#srch_error").html("Please enter text to search").show();
    			return false;
   			}
   			else
   			{
    			rolemaster_datatable();
    			$("#srch_error").html("");
   			}
  		}
  		else
  		{
	 		$("#srch_error").html("");
   			rolemaster_datatable();
  		}
 	});
});
</script>
<script type="text/javascript">
$(document).ready(function()
{
<?php if($this->session->flashdata('success')){  ?>
$("#flash_msg_id").show();
$("#flash_msg_id").slideDown(function() {
    setTimeout(function() {
        $("#flash_msg_id").slideUp();
    }, 5000);
});
<?php } ?>
<?php if($this->session->flashdata('success_delete')){  ?>
$("#flash_msg_id").show();
$("#flash_msg_id").slideDown(function() {
    setTimeout(function() {
        $("#flash_msg_id").slideUp();
    }, 5000);
});
<?php } ?>
<?php if($this->session->flashdata('fail_delete')){  ?>
$("#flash_msg_id").show();
$("#flash_msg_id").slideDown(function() {
    setTimeout(function() {
        $("#flash_msg_id").slideUp();
    }, 5000);
});
<?php } ?>

});
</script>
</div>                            
</div>                       
</div>
      
</body>
</html>

