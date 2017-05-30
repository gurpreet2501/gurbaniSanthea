<html>
<html>
<head>
	<!-- <link rel="stylesheet" type="text/css" href="<?php //base_url('css/date-picker.css') ?>"> -->
	<!-- <link rel="stylesheet" type="text/css" href="<?php //base_url('css/jquery-ui.css')?>"> -->
	<link rel="stylesheet" type="text/css" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" type="text/css" href="<?=base_url('css/bootstrap.min.css')?>">
	<link rel="stylesheet" type="text/css" href="<?=base_url('css/style.css')?>">
	<title>Shudh Gurbani Ucharan</title>
</head>
<body>
 <div class="container">
<!-- Header starts -->
	<div class="header">
		<div class="row">
			<div class="col-xs-12">
				<a href="<?=site_url()?>"><h1 class="site-title">Shudh Gurbani Ucharan</h1></a>
			</div>
		</div>
	</div> <!-- header ends -->
	<div class="row">
		<div class="col-xs-12">
		<nav class="navbar navbar-default">
			  <div class="container-fluid">
			    <!-- Brand and toggle get grouped for better mobile display -->
			    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			      <ul class="nav navbar-nav">
			        <li><a href="<?=site_url('home/index/1')?>">Home</a></li>
			      </ul>
			     
			    </div><!-- /.navbar-collapse -->
			  </div><!-- /.container-fluid -->
			</nav>
		</div>
	</div>
   <?php if($msg = lako::get('flash')->get('global')):?>
      <div class="alert alert-<?=htmlspecialchars($msg['type'])?>" role="alert">
        <p><?=htmlentities($msg['msg']);?></p>
      </div>
    <?php endif; ?>
<body>
<!-- Header Ends-->