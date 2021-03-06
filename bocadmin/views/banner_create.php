
<div class="btn-group">
	<a href="<?php echo site_urlc('banner/index')?>" class='btn'> <i class="fa fa-arrow-left"></i> <?php echo lang('back_list')?></a>
</div>

<?php include_once 'inc_form_errors.php'; ?>

<div class="boxed">
	<h3> <i class="fa fa-plus"></i> <span class="badge badge-success pull-right"><?php echo $title; ?></span> <?php echo lang('add') ?></h3>
	<?php echo form_open(current_urlc(),array("class"=>"form-horizontal","id"=>"frm-create")); ?>

		<div class="boxed-inner seamless">
			<div class="control-group">
				<label class="control-label" for="title"> <?php echo lang('title') ?> </label>
				<div class="controls">
					<input type="text" id="title" name="title" value="<?php echo set_value("title") ?>" x-webkit-speech>
					<a href="#seo-modal" role="button" class="btn btn-info" data-toggle="modal"><?php echo lang('seo') ?></a>
				</div>
			</div>
			<?php if($this->cid==7||$this->cid==2){ ?>
			<div class="control-group">
				<label class="control-label" for="link"> 链接</label>
				<div class="controls">
					<input type="text" id="link" name="link" value="<?php echo set_value("link") ?>" x-webkit-speech>
				</div>
			</div>
			<?php } ?>
			<?php if($this->cid==10){ ?>
			<div class="control-group">
				<label class="control-label" for="link"> 英文标题</label>
				<div class="controls">
					<input type="text" id="link" name="link" value="<?php echo set_value("link") ?>" x-webkit-speech>
				</div>
			</div>
			<?php } ?>
			<?php if($this->cid==11||$this->cid==2){ ?>
			<div class="control-group">
				<label class="control-label" for="content"> 描述</label>
				<div class="controls">
					<textarea name="content" rows='8' class='span4'> <?php echo set_value('content') ?> </textarea>
				</div>
			</div>
			<?php } ?>

			<div class="control-group">
				<label for="title" class="control-label">时间:</label>
				<div class="controls">
					<div class="input-append date timepicker">
						<input type="text" value="<?php echo date("Y-m-d H:i:s",set_value('timeline',now())); ?>" id="timeline" name="timeline" data-date-format="yyyy-mm-dd hh:ii:ss">
						<span class="add-on"><i class="icon-th"></i></span>
					</div>
				</div>
			</div>


			<!-- ctype -->
			<?php if ($ctype = list_coltypes($this->cid)) { ?>
			<div class="control-group">
				<label class="control-label" for="status"> 所属分类:</label>
				<div class="controls">
					<?php
						echo ui_btn_select('ctype',set_value("ctype"),$ctype);
					?>
					<span class="help-inline"></span>
				</div>
			</div>
			<?php } ?>

			<!-- 弹出 -->
			<div id="seo-modal" class="modal hide fade">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-times"></i></button>
					<h3> <i class="fa fa-info-circle"></i><?php echo lang('seo') ?> </h3>
				</div>
				<div class="modal-body seamless">

					<div class="control-group">
						<label for="title_seo" class="control-label"><?php echo lang('title_seo') ?></label>
						<div class="controls">
							<input type="text" id="title_seo" name="title_seo" value="<?php echo set_value("title_seo") ?>" x-webkit-speech>
							<span class="help-inline"></span>
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="tags"><?php echo lang('tag') ?></label>
						<div class="controls">
							<input type="text" id="tags" name="tags" value="<?php echo set_value("tags") ?>">
							<span class="help-inline">使用英文标点`,`隔开</span>
						</div>
					</div>

					<div class="control-group">
						<label for="intro"  class="control-label"><?php echo lang('intro') ?></label>
						<div class="controls">
							<textarea name="intro" rows='8' class='span4'> <?php echo set_value('intro') ?> </textarea>
							<span class="help-inline"></span>
						</div>
					</div>

				</div>
				<div class="modal-footer">
					<a href="#"  data-dismiss="modal" aria-hidden="true" class="btn"><?php echo lang('close') ?></a>
				</div>
			</div>

			<!-- 图片上传 -->
			<div class="control-group">
				<label for="img" class="control-label"><?php echo lang('photo') ?>：</label>
				<div class="controls">
					<div class="btn-group">
						<span class="btn btn-success">
							<i class="fa fa-upload"></i>
							<span> <?php echo lang('upload_file') ?> </span>
							<?php if($this->cid==14||$this->cid==29||$this->cid==32||$this->cid==51){ ?>[700*466]<?php } ?>
							<?php if($this->cid==10){ ?>[143*143]<?php } ?>
							<?php if($this->cid==17){ ?>[562*356]<?php } ?>
							<?php if($this->cid==11){ ?>[301*189]<?php } ?>
							<?php if($this->cid==42){ ?>[214*270]<?php } ?>
							<?php if($this->cid==2){ ?>[1920*783]<?php } ?>
							<?php if($this->cid==57){ ?>[468*500]<?php } ?>
							<input class="fileupload" type="file" accept="">
						</span>
						<input type="hidden" name="photo" class="form-upload" data-more="0" value="<?php echo set_value("photo") ?>">
						<input type="hidden" name="thumb" class="form-upload-thumb" value="<?php echo set_value("thumb") ?>">
					</div>
				</div>
			</div>

			<!-- 对应 photo 模板容器 js 开头为js操作的容器 -->
			<div id="js-photo-show" class="js-img-list-f">
				<!-- 模板 #tpl-img-list -->
			</div>
			<div class="clear"></div>

			<?php if($this->cid==10){ ?>

			 <!-- 图片上传内页 -->
            <div class="control-group">
                <label for="img" class="control-label">大图</label>
                <div class="controls">
                    <div class="btn-group">
                        <span class="btn btn-success">
                            <i class="fa fa-upload"></i>
                            <span> <?php echo lang('upload_file') ?>  </span>
                             [高宽均小于1000px]
                             <input class="fileupload" type="file" accept="" data-for="photoinfo" >
                        </span>
                        <input type="hidden" name="photoinfo" class="form-upload" data-more="0" value="">

                    </div>
                </div>
            </div>
            <div id="js-photoinfo-show" class="js-img-list-f">
                <!-- 模板 #tpl-img-list -->
            </div>

            <div class="clear"></div>
            <?php } ?>

		</div>

		<div class="boxed-footer">
			<input type="hidden" name="cid" value="<?php echo $this->cid ?>">
			<?php if ($this->ccid): ?>
			<input type="hidden" name="ccid" value="<?php echo $this->ccid ?>">
			<?php endif ?>
			<input type="submit" value=" <?php echo lang('submit'); ?> " class='btn btn-primary'>
			<input type="reset" value=' <?php echo lang('reset'); ?> ' class="btn btn-danger">
		</div>
	</form>
</div>

<?php include_once 'inc_ui_media.php'; ?>

<script type="text/javascript">
require(['adminer/js/ui','adminer/js/media','bootstrap-datetimepicker.zh'],function(ui,media){
	// timepick
	$('.timepicker').datetimepicker({'language':'zh-CN','format':'yyyy/mm/dd hh:ii:ss','todayHighlight':true});
	// media 上传
	media.init();
	var banners_photos = <?php echo json_encode(one_upload(set_value("photo"))) ?>;
	media.show(banners_photos,"photo");

	var photoinfo_s = <?php echo json_encode(one_upload(set_value("photoinfo"))) ?>;
    media.show(photoinfo_s,'photoinfo');
    media.sort('photoinfo');
});

</script>
