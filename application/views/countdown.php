<!DOCTYPE html>
<html>
<head>
	<title>Samakalikamalayalam</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Russo+One" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Caveat" rel="stylesheet">
	<style>
		.bg{background:#000;float:left;width:100%;}
		.bg img{width:100%;height:100%;opacity:0.4;}
		.bg-content{position:absolute;width:100%;float:left;color:#fff;top:70px;}
		body{font-family: 'Russo One', sans-serif;color:#fff;}
		.bg-content > .container > h2{text-align:center;font-size:35px;}
		.bg-content > .container > h2 > span{color:#4CAF50;}
		.sub{font-family: 'Caveat', cursive;font-size: 33px; width: 100%;text-align: center; float: left;margin-top: 6px;}
		#countdown{list-style: none;padding-left: 0;margin: 0;display: inline-block;width: 100%; max-width: 600px;margin: 9% 20% 0%;}
		.time {font-size: 40px;font-weight: 700;letter-spacing: 0.05em;line-height: 1; display: inline-block;}
		.unit {text-transform: uppercase;margin-bottom: 0;font-size: 14px;font-weight: 700;letter-spacing: 0.1em;margin-top: 5px;}
		.mb{display:none;}
		@media only screen and (max-width: 991px){
			.mb{display:block;width:auto !important;}
			.bg{background:#795548;color:#fff;}
			.s{display:none;}
			.bg-content{color:#fff;}
			.text-center img{width:39% !important;}
			h2{font-size:17px !important;}
			#countdown{max-width:100%;margin: 9% 2% 0%;}
			#countdown .time-wrap{width: 30% !important;}
			.temps{display:none;}
		}
		@media only screen and (min-device-width : 768px) and (max-device-width : 1024px){
		.s{display:block;}
		.mb{display:none;}
		.text-center img{width:20% !important;}
		.temps{display:block;}
		#countdown .time-wrap{width:21% !important;}
		}

	</style>
</head>
<body style="position:fixed;">
	<div class="bg">
		<!--<img src="<?php print base_url('images/FrontEnd/images/bg_custom.jpg') ?>" class="img-responsive">-->
		<img src="http://images.samakalikamalayalam.com/uploads/imagegallery/temp/c4331e2ce39d7e5de98db8ede1fa0898.jpg" class="img-responsive s">
		<img src="https://s-media-cache-ak0.pinimg.com/736x/30/80/92/30809215247666b8b9cb9963b0da2c3a.jpg" class="img-responsive mb">
		<div class="bg-content">
			<div class="container">
				<div class="col-md-12 text-center" style="margin-bottom:1%;">
					<img src="http://images.dinamani.com/images/FrontEnd/images/group.jpg" class="imp-responsive" style="opacity:1;width:10%;">
				</div>
				<h2><span>S</span>AMAKALIKAMALAYALAM.COM</h2>
				<span class="sub">We are coming soon..</span>
				<ul id="countdown" class="col-md-offset-2">
                    <li class="time-wrap col-xs-6 col-sm-3 temps" style="visibility:hidden;">
                      <span class="time days">--</span>
                      <p class="unit days_ref">days</p>
                    </li>
                    <li class="time-wrap col-xs-6 col-sm-3">
                      <span class="time hours">--</span>
                      <p class="unit hours_ref">hours</p>
                    </li>
                    <li class="time-wrap col-xs-6 col-sm-3">
                      <span class="time minutes">--</span>
                      <p class="unit minutes_ref">minutes</p>
                    </li>
                    <li class="time-wrap col-xs-6 col-sm-3">
                      <span class="time seconds">--</span>
                      <p class="unit seconds_ref">seconds</p>
                    </li>
                 </ul>
			</div>
		</div>
	</div>

</body>
</html>
<script>

setInterval('getCountDowun()',1000);
function getCountDowun(){
$.ajax({
	type:'post',
	url:'<?php print base_url() ?>/times',
	cache:false,
	success:function(result){
		var sp=result.split(':');
		$('.hours').html(sp[0])
		$('.minutes').html(sp[1])
		$('.seconds').html(sp[2])
	}

})

}

</script>
<?php

?>
