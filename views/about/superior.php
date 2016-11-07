<?php 
$cid=16;
$CI->load->model('page_model','mpage');
$single= $CI->mpage->get_one(array('cid'=>$cid));
$CI->load->model('banner_model','mbanner');
$where= array('cid' =>$cid+1,'audit'=>1,'photo !='=>'');
$data= $CI->mbanner->get_all($where); 
$sum=ceil(count($data)/4);

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
            <div class="w940">
                <div class="super-out">
                <?php if($sum>1){ ?>
                    <div class="idea-btn">
                        <span class="i-left"></span>
                        <span class="i-right"></span>
                    </div>
                    <?php } ?>
                    <div class="super-out-txt">
                       <?php if(!empty($single['content'])){echo $single['content'];}?>
                    </div>
                    <div class="super-box">
                        <ul class="super">
                         <?php if(!empty($data)) {?>
                         <?php for ($i=0; $i < $sum; $i++) { ?>
                            <li>
                             <?php foreach ($data as $k => $r) {  if($k>=$i*3&&$k<$i*3+3){?>
                                <div class="super-li-box">
                                    <a href="<?php echo get_photo($r['photo']); ?>"  class="lightbox" style="display:inline-block" title="<?php echo $r['title']; ?>">
                                        <img  src="<?php echo get_photo($r['photo']); ?>"alt="<?php echo get_photo($r['photo']); ?>"   width="281" height="178" >
                                    </a>
                                    <div class="sup-green-txt">
                                        <h2><?php echo subHtml($r['title'],16); ?></h2>
                                        <div class="sup-green">
                                            <h3><?php echo date("m",$r['timeline']); ?></h3>
                                            <h4><?php echo date("Y",$r['timeline']); ?></h4>
                                        </div>
                                    </div>
                                </div>
                                <?php }} ?>
                            </li>
                            <?php }} ?>
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
 $(".lightbox").lightBox();
    Scroll($(".super-box"),$(".idea-btn .i-left"),$(".idea-btn .i-right"),978,0);
    $(".sup-txt").hover(function(){

        $(this).children(".sup-green-txt").show();
    },function(){
        $(this).children(".sup-green-txt").hide();
    })
    $(".body-nav li a").eq(6).addClass("fong");
    $(".w-nav li .nav-a").eq(0).addClass("zoujin-h");
</script>
</body>
</html>