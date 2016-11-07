<?php 
$CI->load->model('banner_model','mbanner');
$where= array('cid' =>2,'audit'=>1,'photo !='=>'');
$ban= $CI->mbanner->get_all($where); 

$CI->load->model('news_model','mnews');
$where= array('audit'=>1,'flag'=>1);
$this->db->where_in('cid',array(35,38));
$tj= $CI->mnews->get_list(6,0,'',$where); 
$sum=ceil(count($tj)/2);


$CI->load->model('video_model','mvideo');
$where= array('cid' =>3,'audit'=>1);
$video= $CI->mvideo->get_list(1,0,'',$where); 
 ?>
<!DOCTYPE html>
<head>
<?php include_once VIEWS.'inc/head.php'; ?>
</head>

<body>
    <?php include_once VIEWS.'inc/header.php'; ?>
    <?php include_once VIEWS.'inc/wnav.php'; ?>
    <div class="box fl">
    	<div class="banner-box fl load-bg">
    		<ul class="banner">
    		<?php foreach ($ban as $key => $r) {?>
    			<li style="background: url(<?php echo get_photo($r['photo']); ?>) no-repeat center;padding-left: 0px;">
	    			<div class="w1000">
	    				<div class="banner-txt fr">
	    					<span class="fr"></span>
	    					<h2 class="fr"><?php echo $r['title']; ?></h2>
	    					<p class="fr"><?php echo $r['content']; ?></p>
	    					<a <?php if(!empty($r['link'])) {?>href="<?php echo $r['link']; ?>"  target="_blank"<?php } ?> class="w-more fr">了解更多</a>
	    				</div>
	    			</div>
    			</li>
    			<?php } ?>
    			
    		</ul>
    		<div class="w-btn">
    			<div class="w1000">
    				<span></span>
    			</div> 
    		</div>
    	</div>
    	<div class="bottom-box">
    		<div class="w1000">
    			<div class="b-l-box fl">
    				<div class="b-l-btn fl">
    					<a href="javascript:;" class="b-l-left fl"></a>
    					<a href="javascript:;" class="b-l-right fl"></a>
    				</div>
    				<div class="b-l-new fl">
    					<ul>
    					 <?php for ($i=0; $i < $sum; $i++) { ?>
	    					<li>
                            <?php foreach ($tj as $k => $r) {  if($k>=$i*2&&$k<$i*2+2){?>
	    						<a href="<?php echo site_url('develop/info/'.$r['id']); ?>" class="new">
	    							<div class="img-box fl">
	    								<img src="<?php if(!empty($r['photo'])){echo get_photo($r['photo']);}else{ echo static_file('web/img/moren_03.jpg');} ?>"  width="132" height="104" alt="">
	    							</div>
	    							<div class="txt-box fl">
	    								<h3><?php echo date("Y.m.d",$r['timeline']) ?></h3>
	    								<p><?php echo subHtml($r['title'],12); ?></p>
	    								<span>查看详情</span>
	    							</div>
	    						</a>
	    						<?php }} ?>
	    					</li>
	    					<?php } ?>
	    					
	    				</ul>
    				</div>
    			</div>
    			<div class="b-c-box fl">
    				<div class="img-box">
    					<img src="<?php echo static_file('web/img/wpic_08.jpg'); ?>"  width="176" height="215" alt="">
    				</div>
    				<div class="txt-box">
    					<h3>制造国星</h3>
    					<p>Manufacture</p>
    					<a href="<?php echo site_url('product'); ?>" style="margin-top:8px;">产品中心</a>
    					<a href="<?php echo site_url('product/quality'); ?>">品质中心</a>
    				</div>
    				<div class="meng-ban">
    					<a href="<?php echo site_url('product'); ?>"></a>
    				</div>
    			</div>
    			<div class="b-r-box fr">
    				<!-- <object classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000' codebase='swflash.cab#version=7,0,19,0" tppabs="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0' width= '310'  height='216'>
					    <param name='movie' value='<?php echo static_file('web/swf/video.swf'); ?>&url=<?php echo static_file(''); ?>&isAutoPlay=ture'>
					    <param name='quality' value='high'>
					    <param name='wmode' value='transparent'>
					    <param name='allowfullscreen' value='true'>
					    <embed  allowfullscreen='true' src='<?php echo static_file('web/swf/video.swf'); ?>&url=<?php echo static_file(''); ?>&isAutoPlay=ture'  quality='high' wmode='transparent' pluginspage='http://www.macromedia.com/go/getflashplayer' type='application/x-shockwave-flash' width='310' height='216' style="margin-top:27px;">
					</object> -->
					<?php if(!empty($video)){?>
					<?php foreach ($video as $k => $r) { if(!empty($r['video'])){ ?>
					<embed width="310" height="216" pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" 
						   type="application/x-shockwave-flash" src="<?php echo static_file('web/swf/video.swf'); ?> " 
						   quality="high" allowfullscreen="true" 
						   wmode="transparent" flashvars="url=<?php echo get_photo($r['video']); ?> &isAutoPlay=true&imgsrc=<?php if(!empty($r['photo'])){echo get_photo($r['photo']);}else{ echo static_file('web/img/moren_03.jpg');} ?> ">
					</embed>
					<?php }else{echo $r['content']; ?>
					<?php }}?>
					<?php } ?>
    			</div>
    		</div>
    	</div>    	
    </div>
    <?php include_once VIEWS.'inc/footer.php'; ?>
<?php 
	echo static_file('web/js/main.js');
	echo static_file('web/js/plug.preload.js');
	echo static_file('web/js/scroll.js');
?>
<script type="text/javascript">
	window.onload = function(){
		
		_PreLoadImg([
			"<?php echo static_file('web/img/banner_02.jpg'); ?>",
			"<?php echo static_file('web/img/banner_02.jpg'); ?>",
			"<?php echo static_file('web/img/banner_02.jpg'); ?>"
		],function(){ 
			$(".banner-box").removeClass("load-bg")
			$(".banner li:first").show();

			var len=$(".banner li").length;
			for(i=0;i<len-1;i++){
				$(".w-btn .w1000").append($(".w-btn span:first").clone())
			}
			$(".w-btn span:last").addClass("cu");
			function auto(){
				var index = $(".cu").index();
				var first = $(".w-btn span:first").index();
				var last = $(".w-btn span:last").index();
				if (index==first) {
					index=last
				}else{
					index=index-1
				};
				$(".w-btn span").eq(index).addClass("cu").siblings().removeClass("cu");
				$(".banner li").eq(index).fadeIn(400).siblings().fadeOut(400);
			}
			setInterval(auto,6000);
			$(".w-btn span").on("click",function(){
				var fir=$(this).index();
				$(".w-btn span").eq(fir).addClass("cu").siblings().removeClass("cu");
				$(".banner li").eq(fir).fadeIn(400).siblings().fadeOut(400);
			})
		})
	}
	Scroll($(".b-l-new"),$(".b-l-btn .b-l-left"),$(".b-l-btn .b-l-right"),388,0);
	// $(".bdshare-button-style0-32 .yindao").hover(function(){
	// 	$(".head-r span").show();
	// },function(){
	// 	$(".head-r span").hide();
	// })
	
</script>
</body>
</html>