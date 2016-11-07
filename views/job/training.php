<?php 
$CI->load->model('page_model','mpage');
$single= $CI->mpage->get_one(array('cid'=>52));

 //SEO
$cid=52;
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
    		<?php include_once VIEWS.'inc/jnav.php'; ?>
    		<div class="w940">
    			<h2 class="b-h2 fl">人才培养</h2>
    			<span class="green fl" ></span>
    			<?php if(!empty($single['content'])){echo $single['content'];}else{echo "资料整理中……";} ?>
    		</div>
    	</div>
    </div>
    <?php include_once VIEWS.'inc/footer.php'; ?>
<?php echo static_file('web/js/main.js');?>
<?php echo static_file('web/js/plug.preload.js'); ?>
<script type="text/javascript">
    $(".w-nav li .nav-a").eq(5).addClass("zoujin-h");
    $(".body-nav li a").eq(2).addClass("fong");
</script>
</body>
</html>