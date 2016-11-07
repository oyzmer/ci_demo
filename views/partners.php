<?php 
if(isset($reg[0])){$cid=$reg[0];}else{$cid=45;}
$CI->load->model('page_model','mpage');
$single= $CI->mpage->get_one(array('cid'=>$cid));
if($cid==45){$sy=0;$tname="顾客";}
if($cid==46){$sy=1;$tname="战略供应商";}
 //SEO
$cid=$cid;
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
    		<?php include_once VIEWS.'inc/pnav.php'; ?>
    		<div class="w940">
    			<h2 class="b-h2 fl"><?php echo $tname; ?></h2>
    			<?php if(!empty($single['content'])){echo $single['content'];}else{echo "资料整理中……";} ?>
    			<span class="green fl" ></span>
    			<?php if(!empty($single['content2'])){echo $single['content2'];}else{echo "资料整理中……";} ?>
    		</div>
    	</div>
    </div>
    <?php include_once VIEWS.'inc/footer.php'; ?>
<?php echo static_file('web/js/main.js');?>
<?php echo static_file('web/js/plug.preload.js'); ?>
<script type="text/javascript">
$(".w-nav li .nav-a").eq(4).addClass("zoujin-h");
    $(".body-nav li a").eq(<?php echo $sy; ?>).addClass("fong");
</script>
</body>
</html>