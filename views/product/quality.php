<?php 
$CI->load->model('page_model','mpage');
$single= $CI->mpage->get_one(array('cid'=>43));
if(!empty($single['photo'])){
$pic=explode(',', $single['photo']);
}
 //SEO
$cid=43;
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
    		<?php include_once VIEWS.'inc/pronav.php'; ?>
    		<div class="w940">
    			<h2 class="b-h2 fl">品质中心</h2>
               <?php if(!empty($single['content'])){echo $single['content'];}else{echo "资料整理中……";} ?>

    			<span class="green fl" ></span>
                <?php if(!empty($pic)) {?>
                <ul class="quality">
                <?php foreach ($pic as $key => $r) { ?>
                    <li>
                        <img src="<?php echo get_photo($r); ?>" alt="<?php echo get_photoalt($r); ?>" width="457" height="304" alt="">
                    </li>
                    <?php } ?>
                </ul>
                <?php } ?>
    		</div>
    	</div>
    </div>
    <?php include_once VIEWS.'inc/footer.php'; ?>
<?php echo static_file('web/js/main.js');?>
<script type="text/javascript">
    $(".w-nav li .nav-a").eq(3).addClass("zoujin-h");
    $(".body-nav li a").eq(1).addClass("fong");
</script>
</body>
</html>