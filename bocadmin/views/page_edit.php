<?php include_once 'inc_modules_path.php'; ?>

<h3>  <i class="fa fa-pencil"></i>  <?php echo $title; ?></h3>

<?php include_once 'inc_form_errors.php'; ?>

<div class="boxed">
	<?php echo form_open(site_urlc($this->class.'/edit'), array('class' => 'form-horizontal', 'id' => 'frm-edit')); ?>

		<input class="hide" type="text" id="p-title" name="title" value="<?php echo set_value('title',$seo['title']) ?>">
		<input class="hide" type="text" id="p-title_seo" name="title_seo" value="<?php echo set_value('title_seo',$seo['title_seo']) ?>">
		<input class="hide" type="text" id="p-tags" name="tags" value="<?php echo set_value('tags',$seo['tags']) ?>">
		<textarea class="hide" id='p-intro' name="intro" rows='8' class='span4'><?php echo set_value('intro',$seo['intro']) ?></textarea>

		<div class="boxed-inner seamless">
			<?php if($this->cid==7){ ?>
			<div class="control-group">
				<label for="title" class="control-label">标题:</label>
				<div class="controls">
					<input type="text" name="title" id="title" value="<?php echo set_value('title',$it['title']); ?>"  required=1>
				</div>
			</div>

			<?php } ?>
			<?php if($this->cid!=54&&$this->cid!=55){ ?>

			<div class="control-group uefull">
				<textarea id="editor_id" name="content" > <?php echo set_value('content',$it['content']); ?></textarea>
				<!-- <span class="help-inline"></span> -->
			</div>
			<?php } ?>

			<?php if($this->cid==45||$this->cid==46){ ?>
			<div class="control-group">
				<label for="title" class="control-label">详细内容:</label>
			</div>
			<div class="control-group uefull">
				<textarea id="content2" name="content2" > <?php echo set_value('content2',$it['content2']); ?></textarea>
				<!-- <span class="help-inline"></span> -->
			</div>

			<?php } ?>

			<?php $arr=array(25,55); ?>
			<?php if(in_array($this->cid, $arr)){ ?>

			<!-- 图片上传 -->
			<div class="control-group">
				<label for="img" class="control-label">图片：</label>
				<div class="controls">
					<div class="btn-group">
						<span class="btn btn-success">
							<i class="fa fa-upload"></i>
							<span> <?php echo lang('upload_file') ?> </span>
							<?php if($this->cid==25) {?>[405*392]<?php } ?>
							<?php if($this->cid==55) {?>[1920*550]<?php } ?>
							<input class="fileupload" type="file" data-for="photo">
						</span>
						<input type="hidden" name="photo" class="form-upload" data-more="0" value="<?php echo $it['photo'] ?>">
						<input type="hidden" name="thumb" class="form-upload-thumb" value="<?php echo $it['thumb'] ?>">
					</div>
				</div>
			</div>

			<div id="js-photo-show" class="js-img-list-f">
				<!-- 模板 #tpl-img-list -->
			</div>

			<div class="clear"></div>
			<?php } ?>
			<?php $arr2=array(6,7,43); ?>
			<?php if(in_array($this->cid, $arr2)){ ?>

			<!-- 图片上传 -->
			<div class="control-group">
				<label for="img" class="control-label">图片：</label>
				<div class="controls">
					<div class="btn-group">
						<span class="btn btn-success">
							<i class="fa fa-upload"></i>
							<span> <?php echo lang('upload_file') ?> </span>
							<?php if($this->cid==6) {?>[576*408]<?php } ?>
							<?php if($this->cid==7) {?>[198*255]<?php } ?>
							<?php if($this->cid==43) {?>[457*304]<?php } ?>
							<input class="fileupload" type="file" accept="" data-for="photo" multiple="multiple">
						</span>
						<input type="hidden" name="photo" class="form-upload" data-more="1" value="<?php echo $it['photo'] ?>">
						<input type="hidden" name="thumb" class="form-upload-thumb" value="<?php echo $it['thumb'] ?>">
					</div>
				</div>
			</div>

			<div id="js-photo-show" class="js-img-list-f">
				<!-- 模板 #tpl-img-list -->
			</div>

			<div class="clear"></div>
			<?php } ?>
			<?php if($this->cid==54){ ?>

			<!-- 图片上传 -->
			<div class="control-group">
				<label for="img" class="control-label">附件</label>
				<div class="controls">
					<div class="btn-group">
						<span class="btn btn-success">
							<i class="fa fa-upload"></i>
							<span> <?php echo lang('upload_file') ?> </span>
							<input class="fileupload" type="file" accept="" data-for="photo" multiple="multiple">
						</span>
						<input type="hidden" name="photo" class="form-upload" data-more="1" value="<?php echo $it['photo'] ?>">
						<input type="hidden" name="thumb" class="form-upload-thumb" value="<?php echo $it['thumb'] ?>">
					</div>
				</div>
			</div>

			<div id="js-photo-show" class="js-img-list-f">
				<!-- 模板 #tpl-img-list -->
			</div>

			<div class="clear"></div>
			<?php } ?>

		</div>

		<div class="boxed-footer">
			<input type="hidden" name="cid" value="<?php echo $this->cid ?>">
			<input type="hidden" name="id" value="<?php echo $it['id']?>">
			<input type="submit" value="<?php echo lang('submit') ?>" class="btn btn-primary">
			<input type="reset" value="<?php echo lang('reset') ?>" class="btn btn-danger">
		</div>
	</form>
</div>

<?php include_once 'inc_ui_media.php'; ?>

<script type="text/javascript">
require(['jquery','adminer/js/ui','adminer/js/media'],function($,ui,media){
	ui.editor_create('editor_id');
	var page_photos = <?php echo json_encode(list_upload($it['photo'])) ?>;
	media.init();
	media.show(page_photos,'photo');
	media.sort('photo');
	$("#js-photo-show" ).sortable().disableSelection();

	<?php if($this->cid==45||$this->cid==46){ ?>
		ui.editor_create('content2');
	<?php } ?>
});
</script>
<?php //echo static_file('adminer/js/page.js'); ?>
