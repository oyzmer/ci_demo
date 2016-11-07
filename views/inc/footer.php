<?php 
$CI->load->model('links_model','mlink');
$where= array('cid' =>53,'audit'=>1);
$f_link= $CI->mlink->get_all($where); 
 ?>
<div class="footer ">
	<div class="wf1000">
		<!-- <ul class="foot-nav">
			<li>
				<a href="javascript:;" style="padding-left:0px;">网站地图</a>
			</li>
			<li>
				<a href="javascript:;">法律申明</a>
			</li>
			<li>
				<a href="javascript:;" style="background:none">联系我们</a>
			</li>
		</ul> -->
		<div class="footer-search">
			<dl>
				<dt>友情链接</dt>
				<dd>
				<?php foreach ($f_link as  $r) {?>
					<a <?php if(!empty($r['link'])) {?>href="<?php echo $r['link']; ?>"  target="_blank"<?php } ?>><?php echo $r['title']; ?></a>
					<?php } ?>
				</dd>
			</dl>
			<a href="http://www.chinaredsun.com/" class="guanwang">红太阳集团官网</a>
		</div>
		<p class="fr">
			<span class="en">COPYRIGHT ©  2015  </span><span class=ch>安徽国星生物化学有限公司</span> 保留所有版权  
			<a target="_blank" title="网站建设" href="http://www.bocweb.cn/" class="t-c">网站建设</a>：<a target="_blank" title="网站建设" href="http://www.bocweb.cn/" class="t-c">博采网络</a>
		</p>
	</div>
</div>
<div style="float:center; font-size:12px; margin-top:8px; margin-bottom:8px; text-align:center; margin-right:13px; display:none"><?php echo isset($site_description)?$site_description:''?></div>
<script type="text/javascript">
	$(".footer-search dl").hover(function(){
		$(this).find("dd").slideDown();
	},function(){
		$(this).find("dd").slideUp();
	})
</script>