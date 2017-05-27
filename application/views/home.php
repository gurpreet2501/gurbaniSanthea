<?php $this->load->view('partials/header'); ?>
<div class="content">
	<div class="container">
		<div class="row">
			<!-- Content area starts -->
 			<div class="col-xs-12">
					<div class="title clearfix"><h1 class="pull-right">ਅੰਗ <?=$ang_no?></h1></div>
					<div class="border-frame">
						<div class="ang_display" data-ang="<?=$ang_no?>">
						<?php foreach($angData->lines as $line): ?>
							<span class="lines line_<?=$line->line_no?>"><?=$line->text?></span>
						<?php endforeach; ?>
						</div>	
					</div>
			</div>
			<!-- Content area starts -->
		</div>
	</div>
</div>
<?php $this->load->view('partials/footer'); ?>