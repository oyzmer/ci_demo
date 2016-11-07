<?php 
$tid=-1;
if(isset($reg[0])){$tid=$reg[0];}
$CI->load->model('coltypes_model','mcoltypes');
$type= $CI->mcoltypes->get_one($tid);

$CI->load->model('banner_model','mbanner');
$where= array('cid' =>42,'audit'=>1,'ctype'=>$tid);
$data= $CI->mbanner->get_all($where); 
$sum=ceil(count($data)/4);

 //SEO

$cid=42;
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
    			<h2 class="b-h2 fl"><?php if(!empty($type)){echo $type['title'];}else{echo "产品中心";} ?></h2>
                <p  class="b-p fl" style="margin-bottom:0px; text-indent:2em;">
                    <?php if(!empty($type)){echo $type['content'];} ?>
                </p>
    			<span class="green fl" ></span>
                <div class="class-out">
                <?php if($sum>1){ ?>
                    <div class="class-btn">
                        <a href="javascript:;" class="cleft fl"></a>
                        <a href="javascript:;" class="cright fr"></a>
                    </div>
                    <?php } ?>
                    <div class="class-box">
                        <ul class="class">
                        <?php for ($i=0; $i < $sum; $i++) { ?>
                            <li>
                            <?php foreach ($data as $k => $r) {  if($k>=$i*4&&$k<$i*4+4){?>
                                <a href="javascript:;">
                                    <img src="<?php echo get_photo($r['photo']); ?>"alt="<?php echo get_photo($r['photo']); ?>"    width="214" height="270" >
                                    <h3><?php echo subHtml($r['title'],10); ?></h3>
                                    <h4><?php echo date("Y-m-d",$r['timeline']) ?><span class="fr">></span></h4>
                                </a>
                                <?php }} ?>
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
<script type="text/javascript">
    Scroll($(".class-box"),$(".class-btn .cleft"),$(".class-btn .cright"),960,0);
    $(".w-nav li .nav-a").eq(3).addClass("zoujin-h");
    $(".body-nav li a").eq(0).addClass("fong");
</script>
</body>
</html>