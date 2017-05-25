<?php $this->load->view('partials/header'); ?>
<div class="content">
	<div class="container">
		<div class="row">
			<!-- Content area starts -->
 			<div class="col-xs-12">
					<div class="title clearfix"><h1 class="pull-right">ਅੰਗ <?=$data->ang_no?></h1></div>
					<div class="border-frame">
						<div class="ang_display">
							<?php echo $data->ang_desc; ?>
						</div>	
					</div>
			</div>
			<!-- Content area starts -->
		</div>
	</div>
</div>
<?php $this->load->view('partials/footer'); ?>