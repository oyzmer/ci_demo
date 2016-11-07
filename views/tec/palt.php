<?php 
$CI->load->model('page_model','mpage');
$single= $CI->mpage->get_one(array('cid'=>25));


 //SEO
$cid=25;
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
    		<?php include_once VIEWS.'inc/tnav.php'; ?>
    		<div class="w940">
    			<h2 class="b-h2 fl">平台建设</h2>
                <div class="palt-l fl">
                    <?php if(!empty($single['content'])){echo $single['content'];}else{echo "资料整理中……";} ?>
                    <a href="<?php echo site_url('job'); ?>" class="join">加入国星</a>
                </div>
                <?php if(!empty($single['photo'])){ ?>
                <img class="fr" src="<?php echo get_photo($single['photo']); ?>"  width="405" height="392" alt="">
                <?php } ?>
    		</div>
    	</div>
    </div>
    <?php include_once VIEWS.'inc/footer.php'; ?>
<?php echo static_file('web/js/main.js');?>
<script type="text/javascript">
     $(".w-nav li .nav-a").eq(1).addClass("zoujin-h");
    $(".body-nav li a").eq(2).addClass("fong");
</script>
</body>
</html>