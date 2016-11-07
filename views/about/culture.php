<?php 
$CI->load->model('banner_model','mbanner');
$where= array('cid' =>11,'audit'=>1,'photo !='=>'');
$data= $CI->mbanner->get_all($where); 
$sum=ceil(count($data)/3);

 //SEO
$cid=11;
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
    		<div class="w940">
    			<h2 class="b-h2 fl">企业文化</h2>
    			<span class="green fl" ></span>
                 <?php if(!empty($data)) {?>
                 <?php for ($i=0; $i < $sum; $i++) { ?>
                <ul class="culture">
                    <?php foreach ($data as $k => $r) {  if($k>=$i*3&&$k<$i*3+3){?>
                    <li>
                        <img  src="<?php echo get_photo($r['photo']); ?>"alt="<?php echo get_photo($r['photo']); ?>"  width="301" height="189" >
                        <h3><?php echo $r['title']; ?></h3>
                        <p>
                            <?php echo $r['content']; ?>
                        </p>
                    </li>
                    <?php }} ?>
                </ul>
                <?php } ?>
                <?php }else{ ?>
                资料整理中……
                <?php } ?>
    		</div>
    	</div>
    </div>
    <?php include_once VIEWS.'inc/footer.php'; ?>
<?php echo static_file('web/js/main.js');?>
<script type="text/javascript">
    $(".w-nav li .nav-a").eq(0).addClass("zoujin-h");
    $(".body-nav li a").eq(4).addClass("fong");
</script>
</body>
</html>