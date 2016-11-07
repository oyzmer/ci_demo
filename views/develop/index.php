<?php 
$cid=31;
$CI->load->model('page_model','mpage');
$single= $CI->mpage->get_one(array('cid'=>$cid));
$CI->load->model('banner_model','mbanner');
$where= array('cid' =>$cid+1,'audit'=>1,'photo !='=>'');
$data= $CI->mbanner->get_all($where); 
$sum=ceil(count($data)/8);

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
            <?php include_once VIEWS.'inc/dnav.php'; ?>
            <div class="w940">
                <h2 class="b-h2 fl">环保</h2>
                <?php if(!empty($single['content'])){echo $single['content'];} ?>
                <span class="green fl" ></span>
                <div class="idea-out">
                <?php if($sum>1){ ?>
                    <div class="idea-btn">
                        <span class="i-left"></span>
                        <span class="i-right"></span>
                    </div>
                <?php } ?>
                    <div class="idea-box">
                        <ul class="idea">
                            <?php for ($i=0; $i < $sum; $i++) { ?>
                            <li>
                            <?php foreach ($data as $k => $r) {  if($k>=$i*8&&$k<$i*8+8){?>
                                <div class="idea-img">
                                    <a href="<?php echo get_photo($r['photo']); ?>" class="lightbox" style="display:inline-block" title="<?php echo $r['title']; ?>">
                                        <img src="<?php echo get_photo($r['photo']); ?>"alt="<?php echo get_photo($r['photo']); ?>"   width="222" height="148" >
                                        <span><?php echo subHtml($r['title'],10); ?></span>
                                    </a>
                                </div>
                                <?php } }?>
                            </li>
                            <?php } ?>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php include_once VIEWS.'inc/footer.php'; ?>
<?php echo static_file('web/js/main.js');?>
<?php echo static_file('web/js/scroll.js'); ?>
<?php echo static_file('web/lightbox/jquery.lightbox-0.5.js'); ?>
<?php echo static_file('web/lightbox/jquery.lightbox-0.5.css'); ?>
<script type="text/javascript">
    Scroll($(".idea-box"),$(".idea-btn .i-left"),$(".idea-btn .i-right"),916,0);
    $(".w-nav li .nav-a").eq(2).addClass("zoujin-h");
    $(".body-nav li a").eq(1).addClass("fong");
    $(".lightbox").lightBox();
</script>
</body>
</html>