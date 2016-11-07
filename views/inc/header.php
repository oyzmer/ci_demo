<div class="header">
	<div class="w1000" style="position:relative">
		<a href="<?php echo site_url('welcome'); ?>" class="logo fl" title="安徽国星生物化学有限公司">
			<img src="<?php echo static_file('web/img/logo_03.png'); ?>"  width="375" height="55" alt="">
		</a>
		<div class="head-r fr">
			<div class="yindao-txt"><span>引导页</span></div>
			<div class="yindao-txt2"><span>主页</span></div>
			<div class="yindao-txt3"><span>分享到微信</span></div>
			<div class="yindao-txt4"><span>分享到新浪微博</span></div>
			<div class="head-share bdsharebuttonbox">
				<a href="<?php echo site_url('welcome'); ?>" class="home" title="主页"></a>
				<a href="<?php echo site_url('default'); ?>" class="yindao" title="引导页"></a>
				<a href="javascript:;" class="weixin" data-cmd="weixin" title="分享到微信"></a>
				<a href="#" class="tsina" data-cmd="tsina" title="分享到新浪微博"></a>
			</div>
		</div>
		<div class="weibo-box">
			<img src="<?php echo static_file('web/img/erwei_03.jpg'); ?>"  width="121" height="121" alt="">
		</div>
	</div>
</div>

<script type="text/javascript">
	$(".head-share .yindao").hover(function(){
		// alert(1);
		$(".head-r .yindao-txt span").show();
	},function(){
		$(".head-r .yindao-txt span").hide();
	});
	$(".head-share .weixin").hover(function(){
		$(".weibo-box").show();
		$(".head-r .yindao-txt3 span").show();
	},function(){
		$(".weibo-box").hide();
		$(".head-r .yindao-txt3 span").hide();
	})
	$(".head-share .home").hover(function(){
		// alert(1);
		$(".head-r .yindao-txt2 span").show();
	},function(){
		$(".head-r .yindao-txt2 span").hide();
	});
	$(".head-share .tsina").hover(function(){
		// alert(1);
		$(".head-r .yindao-txt4 span").show();
	},function(){
		$(".head-r .yindao-txt4 span").hide();
	});
</script>
<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"32"},"share":{}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>