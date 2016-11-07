<?php 
$CI->load->model('page_model','mpage');
$single= $CI->mpage->get_one(array('cid'=>23));
$CI->load->model('banner_model','mbanner');
$CI->load->model('coltypes_model','mcoltypes');
$where= array('cid'=>24,'depth'=>0);
$this->db->order_by("sort_id asc");
$data= $CI->mcoltypes->get_all($where);
foreach ($data as $k => $r) {
    $where= array('cid' =>24,'audit'=>1,'ctype'=>$r['id']);
    $data[$k]['pro']= $CI->mbanner->get_all($where); 
}


$CI->load->model('page_model','mpage');
$file= $CI->mpage->get_one(array('cid'=>54));
 //SEO
$cid=23;
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
    		<div class="w897">
    			<h2 class="b-h2 fl">工艺优化</h2>
                <?php if(!empty($single['content'])){echo $single['content'];}else{echo "资料整理中……";} ?>
    			<span class="green fl" ></span>
                <a <?php if(!empty($file)&&!empty($file['photo'])) {?> href="<?php echo get_photo($file['photo']) ?>" <?php } ?> class="tea fr">生产工艺和环保技术</a>
                <ul class="tec-img">
                <?php foreach ($data as $key => $v) { foreach ($v['pro'] as  $r) {?>
                    <li>
                        <a href="<?php echo get_photo($r['photo']); ?>"  class="lightbox" style="display:inline-block" title="<?php echo $r['title']; ?>">
                            <img src="<?php echo get_photo($r['photo']); ?>" <?php if($v['id']==1) {?> width="297" <?php }else{ ?>width="447"<?php } ?> height="272" alt="<?php echo get_photoalt($r['photo']); ?>">
                        </a>
                        <span><?php echo $r['title']; ?></span>
                    </li>
                    <?php } }?>
                </ul>
    		</div>
    	</div>
    </div>
    <?php include_once VIEWS.'inc/footer.php'; ?>
<?php echo static_file('web/js/main.js');?>
<?php echo static_file('web/lightbox/jquery.lightbox-0.5.js'); ?>
<?php echo static_file('web/lightbox/jquery.lightbox-0.5.css'); ?>
<script type="text/javascript">
    $(".lightbox").lightBox();
     $(".w-nav li .nav-a").eq(1).addClass("zoujin-h");
    $(".body-nav li a").eq(1).addClass("fong");
</script>
</body>
</html>