<?php 
$CI->load->model('page_model','mpage');
$single= $CI->mpage->get_one(array('cid'=>41));


$CI->load->model('coltypes_model','mcoltypes');
$where= array('cid'=>42,'depth'=>0);
$this->db->order_by("sort_id asc");
$data= $CI->mcoltypes->get_all($where);
$sum=ceil(count($data)/2);

 //SEO
$cid=41;
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
    			<h2 class="b-h2 fl">产品中心</h2>
               <?php if(!empty($single['content'])){echo $single['content'];} ?>
    			<span class="green fl" ></span>
                <?php for ($i=0; $i < $sum; $i++) { ?>
                <ul class="product">
                <?php foreach ($data as $k => $r) {  if($k>=$i*2&&$k<$i*2+2){?>
                   <li <?php if($k%2==0){ ?>class="fl" <?php }else{ ?>class="fr"<?php } ?>>
                        <a href="<?php echo site_url('product/class/'.$r['id']); ?>">
                            <img src="<?php echo get_photo($r['photo']); ?>"alt="<?php echo get_photo($r['photo']); ?>"   width="452" height="253" >
                            <h3><?php echo subHtml($r['title'],10); ?></h3>
                            <p>
                                <?php echo strip_tags(subHtml(str_replace("&nbsp;", "  ", strip_tags($r['content'])),52));?>
                            </p>
                            <span></span>
                        </a>
                    </li>
                    <?php } }?>
                </ul>
                <?php } ?>
    		</div>
    	</div>
    </div>
    <?php include_once VIEWS.'inc/footer.php'; ?>
<?php echo static_file('web/js/main.js');?>
<script type="text/javascript">
    $(".w-nav li .nav-a").eq(3).addClass("zoujin-h");
    $(".body-nav li a").eq(0).addClass("fong");
</script>
</body>
</html>