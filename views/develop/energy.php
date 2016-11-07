<?php 
if(isset($reg[0])){$cid=$reg[0];}else{$cid=34;}
$CI->load->model('page_model','mpage');
$single= $CI->mpage->get_one(array('cid'=>$cid));
$CI->load->model('news_model','mnews');
$fl=$cid+1;
$where= array('cid' =>$fl,'audit'=>1);
if(isset($reg[1])){$page=$reg[1];}else{$page=1;}
$limit = 6;
$count = $CI->mnews->get_count_all($where);
$pages = _pages(site_url($url_base).'/'.$cid.'/',$limit,$count,4);
$data = $CI->mnews->get_list($limit,$limit*($page-1),$orders,$where); 
//$data= $CI->mnews->get_all($where); 


if($cid==34){$sy=2;$tname="公益";}
if($cid==37){$sy=3;$tname="节能减排";}
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
                <h2 class="b-h2 fl"><?php echo $tname; ?></h2>
                 <?php if(!empty($single['content'])){echo $single['content'];} ?>
                <span class="green fl" ></span>
                <div class="public-txt">
                 <?php foreach ($data as $k => $r) {?>
                    <a href="<?php echo site_url('develop/info/'.$r['id']); ?>">
                        <?php echo subHtml($r['title'],42); ?>
                        <span><?php echo date("Y.m.d",$r['timeline']); ?></span>
                    </a>
                    <?php } ?>
                </div>
                 <div class="page">
                        <?php if(!empty($data)){echo $pages;} ?>
                    </div>
            </div>
        </div>
    </div>
    <?php include_once VIEWS.'inc/footer.php'; ?>
<?php echo static_file('web/js/main.js');?>
<?php echo static_file('web/js/scroll.js'); ?>
<script type="text/javascript">
    Scroll($(".idea-box"),$(".idea-btn .i-left"),$(".idea-btn .i-right"),916,0);
    $(".w-nav li .nav-a").eq(2).addClass("zoujin-h");
    $(".body-nav li a").eq(<?php echo $sy; ?>).addClass("fong");
</script>
</body>
</html>