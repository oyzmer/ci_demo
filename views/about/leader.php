<?php 
$CI->load->model('page_model','mpage');
$single= $CI->mpage->get_one(array('cid'=>7));
if(!empty($single['photo'])){
$pic=explode(',', $single['photo']);
}
 //SEO
$cid=7;
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
    		<div class="w840">
    			<div class="leader-img-box">
                    <div class="leader-btn">
                        <a href="javascript:;" class="leader-lelft fl"></a>
                        <a href="javascript:;" class="leader-right fr"></a>
                    </div>
                    <?php if(!empty($pic)) {?>
                    <div class="leader-img-out">
                        <div class="leader-img">
                            <ul class="leader">
                            <?php foreach ($pic as $key => $r) { ?>
                                <li <?php if($key==1) {?>class="over"<?php } else{?>class="ld" <?php } ?>>
                                    <img src="<?php echo get_photo($r); ?>"  width="100%" height="100%" alt="<?php echo get_photoalt($r); ?>">
                                    <span><?php echo $single['title']; ?></span>
                                </li>
                                <?php } ?>
                            </ul>
                        </div>
                    </div>
                    <?php } ?>
                    <div class="leader-txt-box">
                        <?php if(!empty($single['content'])){echo $single['content'];}else{echo "资料整理中……";} ?>
                    </div>
                </div>
    		</div>
    	</div>
    </div>
    <?php include_once VIEWS.'inc/footer.php'; ?>
<?php echo static_file('web/js/main.js');?>
<script type="text/javascript">
    $(function(){
        $(".leader-btn .leader-right").on("click",function(){
            var index1=$(".leader-img .leader .over").index();
            var last1=$(".leader-img .leader li:last").index();
            var num1=index1;
            if (index1==last1) {
                return;
            }else{
                num1=index1+1;
            };
            $(".leader-img .leader").animate({
                marginLeft:-198*num1+198+"px"
            },500);
            $(".leader-txt").animate({
                marginLeft:-750*num1+750+"px"
            },500);
            $(".leader-img .leader li").eq(num1).addClass("over").removeClass("ld");
            $(".leader-img .leader li").eq(num1).siblings("li").removeClass("over").addClass("ld");
            // $(".leader-txt li").eq(num1).addClass("over");
            // $(".leader-txt li").eq(num1).siblings("li").removeClass("over")
        })
    })
    $(function(){
        $(".leader-btn .leader-lelft").on("click",function(){
            var index=$(".leader-img .leader .over").index();
            var last=$(".leader-img .leader li:last").index();
            var num=index;
            if (index==0) {
                return;
            }else{
                num=index-1;
            };
           $(".leader-img .leader").animate({
                marginLeft:-198*num+198+"px"
            },500);
            $(".leader-txt").animate({
                marginLeft:-750*num+750+"px"
            },500);
            $(".leader-img .leader li").eq(num).addClass("over").removeClass("ld");
            $(".leader-img .leader li").eq(num).siblings("li").removeClass("over").addClass("ld");
            // $(".leader-txt li").eq(num).addClass("over");
            // $(".leader-txt li").eq(num).siblings("li").removeClass("over")
        })
    })
    $(".w-nav li .nav-a").eq(0).addClass("zoujin-h");
    $(".body-nav li a").eq(2).addClass("fong");
</script>
</body>
</html>