<?php $this->load->view('partials/header');
$next =  $ang_no+1;
$previous =  $ang_no-1;

 ?>
<div class="content">
	<div class="container">

		<div class="row">
			<!-- Content area starts -->
 			<div class="col-xs-12">
 				<button class="btn-success show-replacements">Show Replacements</button>
 				<button class="btn-danger hide-replacements">Hide Replacements</button>
					<div class="title clearfix"><h1 class="pull-right">ਅੰਗ <?=$ang_no?></h1></div>
					<div class="border-frame img-thumbnail">
						<div class="ang_display" data-ang="<?=$ang_no?>">
						<?php foreach($angData->lines as $line): ?>
							<span class="lines line_<?=$line->line_no?>"><?=$line->text?></span>
						<?php endforeach; ?>
						</div>	
					</div>
			</div>
			<!-- Content area starts -->
		</div> <!-- row -->
		<hr/>
		<div class="row">
			<div class="col-md-12">
			<?php if($ang_no != 1): ?>
				<a href="<?=site_url('home/index/'.$previous)?>"><button class="btn btn-danger">Previous</button></a>
			<?php endif;?>
			<?php if($ang_no != 1430): ?>
				<a href="<?=site_url('home/index/'.$next)?>"><button class="btn btn-danger pull-right">Next</button></a>
			<?php endif;?>
			</div>
		</div>
	</div>
</div>
<?php $this->load->view('partials/footer'); ?>