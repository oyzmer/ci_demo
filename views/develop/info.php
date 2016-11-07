<?php 
$CI->load->model('coltypes_model','mcoltypes');
$CI->load->model('news_model','mnews');
if(!isset($reg[0])){show_404();}
$rs = $CI->mnews->get_one($reg[0]);
!$rs and show_404();


$cid=$rs['cid']-1;
if($cid==34){$sy=2;$tname="公益";}
if($cid==37){$sy=3;$tname="节能减排";}

 $click=$rs['click'];
$id=$rs['id'];
if(!($this->session->userdata("news".$id)))
{
    $click++;
    $data=array('click'=>$click);
    $CI->mnews->update($data,'id = '.$id);
    $this->session->set_userdata(array("news".$id=>1));
}


 $header['title'] = $rs['title'];
if ($rs['title_seo']) {
    $header['title'] = $rs['title_seo'];
}
if ($rs['tags']) {
$header['tags'] = $rs['tags'];
}
if ($rs['intro']) {
$header['intro'] = $rs['intro'];
} 
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
            <!-- <div class="body-nav-box fl">
                <span class="fl">可持续发展</span>
                <i class="fl">SUSTAINABLE DEVELOPMENT</i>
            </div> -->
            <?php include_once VIEWS.'inc/dnav.php'; ?>
            <div class="w940">
                <div class="in-con">
                    <h2><?php echo $rs['title']; ?></h2>
                    <h3><span class="time"><?php echo date("Y-m-d",$rs['timeline']) ?></span><span class="guanzhu"><?php echo $rs['click']; ?>关注</span></h3>
                    <div class="new-cont">
                        <?php echo $rs['content']; ?>
                    </div>
                    <?php if(isset($rs['prev_id'])){ ?><a class="fl" href="<?php echo site_url('develop/info/'.$rs['prev_id']); ?>">上一篇：<?php echo strcut($rs['prev_title'],40); ?></a><?php } ?>
                    <?php if(isset($rs['next_id'])){ ?><a class="fl" href="<?php echo site_url('develop/info/'.$rs['next_id']); ?>">下一篇：<?php echo strcut($rs['next_title'],40); ?></a><?php } ?>

                    <a href="<?php echo site_url('develop/energy/'.$cid) ?>" class="back fr">返回</a>
                </div>
            </div>
        </div>
    </div>
    <?php include_once VIEWS.'inc/footer.php'; ?>
<?php echo static_file('web/js/main.js');?>
<?php echo static_file('web/js/plug.preload.js'); ?>
<script type="text/javascript">
$(".b-nav li .hezuo").addClass("zoujin-h");
   $(".body-nav li a").eq(<?php echo $sy; ?>).addClass("fong");
    $(".w-nav li .nav-a").eq(2).addClass("zoujin-h");
</script>
</body>
</html>