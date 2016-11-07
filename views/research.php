<?php 
$CI->load->model('page_model','mpage');
$single= $CI->mpage->get_one(array('cid'=>20));

$single2= $CI->mpage->get_one(array('cid'=>21));
$pic= $CI->mpage->get_one(array('cid'=>55));

$single3= $CI->mpage->get_one(array('cid'=>56));

 //SEO
$cid=20;
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
    	</div>
    </div>
    <div class="re-bg" <?php if(!empty($pic)&&!empty($pic['photo'])){ ?>style="background: url('<?php echo get_photo($pic['photo']); ?>') no-repeat top center;" <?php } ?>>
        <div class="w1184">
            <div class="re-l fl">
               <?php if(!empty($single['content'])){echo $single['content'];}else{echo "资料整理中……";} ?>
            </div>
            <div class="re-r fr">
               <?php if(!empty($single2['content'])){echo $single2['content'];}else{echo "资料整理中……";} ?>
            </div>
        </div>
        <div class="w960">
            <div class="houjia">
               <?php if(!empty($single3['content'])){echo $single3['content'];} ?>
            </div>
        </div>
    </div>
    <?php include_once VIEWS.'inc/footer.php'; ?>
<?php echo static_file('web/js/main.js');?>
<script type="text/javascript">
    $(".w-nav li .nav-a").eq(1).addClass("zoujin-h");
    $(".body-nav li a").eq(0).addClass("fong");
</script>
</body>
</html>