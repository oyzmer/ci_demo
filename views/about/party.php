<?php 
$cid=13;
$CI->load->model('page_model','mpage');
$single= $CI->mpage->get_one(array('cid'=>$cid));
$CI->load->model('news_model','mnews');
$where= array('cid' =>$cid+1,'audit'=>1);
$data= $CI->mnews->get_list(3,0,'',$where);

$CI->load->model('banner_model','mbanner');
$where= array('cid' =>57,'audit'=>1,'photo !='=>'');
$list= $CI->mbanner->get_all($where); 
$sum=ceil(count($list)/3); 

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
    		<?php include_once VIEWS.'inc/anav.php'; ?>
    		<div class="w733">
    			<div class="party-img">
                   <?php if(!empty($single['content'])){echo $single['content'];} ?>
                   <div class="super-box-z">
                       <div class="super-box-s">
                            <ul class="super-s">
                            <?php for ($i=0; $i < $sum; $i++) { ?>
                                <li>
                                 <?php foreach ($list as $k => $r) {  if($k>=$i*8&&$k<$i*8+8){?>
                                    <div class="super-li-box-s">
                                        <a href="<?php echo get_photo($r['photo']); ?>"  class="lightbox" style="display:inline-block" title="<?php echo $r['title']; ?>">
                                            <img src="<?php echo get_photo($r['photo']); ?>"  width="234" height="160" alt="">
                                        </a>
                                    </div>
                                    <?php }} ?>
                                </li>
                                <?php } ?>
                                
                            </ul>         
                        </div>
                        <div class="idea-btn">
                            <span class="i-left"></span>
                            <span class="i-right"></span>
                        </div>
                    </div>
                </div>
                <ul class="party-txt">
                <?php foreach ($data as $k => $v) {?>
                    <li>
                        <div class="party-title0<?php echo $k+1;?>"><span><?php echo subHtml($v['title'],6); ?></span></div>
                        <p>
                            <?php echo strip_tags(subHtml(str_replace("&nbsp;", "  ", strip_tags($v['content'])),1000));?>
                        </p>
                    </li>
                    <?php } ?>
                </ul>
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
    Scroll($(".super-box-s"),$(".idea-btn .i-left"),$(".idea-btn .i-right"),732,0);
    $(".lightbox").lightBox();
    $(".w-nav li .nav-a").eq(0).addClass("zoujin-h");
    $(".body-nav li a").eq(5).addClass("fong");
</script>
</body>
</html>