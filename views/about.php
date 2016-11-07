<?php 
$CI->load->model('page_model','mpage');
$single= $CI->mpage->get_one(array('cid'=>6));
if(!empty($single['photo'])){
$pic=explode(',', $single['photo']);
}
 //SEO
$cid=6;
if(tag_columns($cid,'title_seo')){
   $header['title'] = tag_columns($cid,'title_seo');
}else{
 if(tag_columns($cid))
 $header['title'] = tag_columns($cid);
}
if(tag_columns($cid,'tags'))
$header['tags'] = tag_columns($cid,'tags');
if(tag_columns($cid,'intro'))
$header['intro'] = tag_columns($cid,'intro');

 ?>
<!DOCTYPE html>
<head>
<?php include_once VIEWS.'inc/head.php'; ?>
</head>

<body>
    <?php include_once VIEWS.'inc/header.php'; ?>
    <?php include_once VIEWS.'inc/wnav.php'; ?>
    <div class="bgbox">
	    <div class="w1000">
	    	<?php include_once VIEWS.'inc/anav.php'; ?>
	    	<div class="a-cont">
	    	<?php if(!empty($pic)) {?>
	    		<div class="a-cont-img fl">
	    			<ul class="a-img">
	    			<?php foreach ($pic as $key => $r) { ?>
	    				<li>
	    					<img src="<?php echo get_photo($r); ?>"  width="576" height="408" alt="<?php echo get_photoalt($r); ?>">
	    				</li>
	    				<?php } ?>
	    			</ul>
	    			<div class="a-img-btn">
	    				<span></span>
	    			</div>
	    		</div>
	    		<?php } ?>
	    		<div class="a-con-r fr">
	    			<div class="a-title">
	    				公司简介
	    			</div>
	    			<div class="a-txt-box">
	    				<div class="a-txt">
	    					<?php if(!empty($single['content'])){echo $single['content'];}else{echo "资料整理中……";} ?>
	    				</div>
	    			</div>
	    			<div class="a-txt-btn">
	    				<a href="javascript:;" class="a-txt-left fl"></a>
	    				<a href="javascript:;" class="a-txt-right fr"></a>
	    			</div>
	    		</div>
	    	</div>
	    </div>
	</div>
    <?php include_once VIEWS.'inc/footer.php'; ?>
<?php
	echo static_file('web/js/main.js');
?>
<script>

	// 文字滚动
	$(function(){
		$(".a-txt-right").hover(function(){
			$(".a-txt").animate({
				marginTop:-$(".a-txt").height()+$(".a-txt-box").height()+-10+"px"
			},3000)
		},function(){
			$(".a-txt").stop()
		})
		$(".a-txt-left").hover(function(){
			$(".a-txt").animate({
				marginTop:0
			},3000)
		},function(){
			$(".a-txt").stop()
		})
	})

	// 图片切换
	$(function(){
		$(".a-img li:first").addClass("focus").show();
		var len=$(".a-img li").length;
		for(i=0;i<len-2;i++){
			$(".a-img-btn").append($(".a-img-btn span").clone())
		}
		$(".a-img-btn span:first").addClass("color-green");
		function pic(){
			var index=$(".a-img .focus").index();
			var last=$(".a-img li:last").index();
			if (index==last) {
				num=0;
			}else{
				num=index+1;
			}
			$(".a-img li").eq(num).addClass("focus").siblings().removeClass("focus");
			$(".a-img li").eq(num).fadeIn(800).siblings().fadeOut(800);
			$(".a-img-btn span").eq(num).addClass("color-green").siblings().removeClass("color-green");
		};
		var funb=setInterval(pic,3000);
		$(".a-img-btn span").on("click",function(){
			var n=$(this).index();
			$(this).addClass("color-green").siblings().removeClass("color-green");
			$(".a-img li").eq(n).fadeIn(800).siblings().fadeOut(800);

		})
		$(".a-cont-img").hover(function(){
			clearInterval(funb);
		},function(){
			funb=setInterval(pic,3000);
		})
	})
	$(".w-nav li .nav-a").eq(0).addClass("zoujin-h");
	$(".body-nav li a").eq(1).addClass("fong");
	$(function(){
		var h = $(".a-txt").height();
		if (h < 345) {
			$(".a-txt-btn").hide();
		}else{
			$(".a-txt-btn").show();
		}
			
	})
</script>
</body>
</html>