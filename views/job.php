<?php 
$CI->load->model('recruit_model','mrecruit');
$where= array('cid' =>48,'audit'=>1);
if(isset($reg[0])){$page=$reg[0];}else{$page=1;}
$limit = 6;
$count = $CI->mrecruit->get_count_all($where);
$pages = _pages(site_url($url_base),$limit,$count,2);
$data = $CI->mrecruit->get_list($limit,$limit*($page-1),$orders,$where); 

//SEO
$cid=48;
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
            <?php include_once VIEWS.'inc/jnav.php'; ?>
            <dl class="job">
                <dt>
                    <b>职位名称</b>  
                    <span>发布日期</span>
                    <span>所属部门</span>
                    <span>工作地点</span>
                    <span>薪资待遇</span>
                </dt>
                <?php foreach ($data as  $k=>$r) { ?>
                <dd>
                    <a href="javascript:;" class="job-line <?php if($k==0){echo "job-line-a";} ?>">
                        <b>· <?php echo $r['title']; ?>（<?php if(!empty($r['amount'])) {echo $r['amount']; }else{echo "不限";}?>人）</b>
                        <span><?php echo date("Y-m-d",$r['timeline']) ?></span>
                        <span><?php echo $r['department']; ?></span>
                        <span><?php echo $r['place']; ?></span>
                        <span><?php echo $r['require']; ?></span> 
                    </a>
                    <div class="job-txt">
                        <?php echo $r['content']; ?>
                        <a href="<?php echo site_url('apply/'.$r['id']) ?>" class="apply">在线申请</a>
                    </div>
                </dd>
                <?php } ?>
            </dl>
            <div class="page">
                        <?php if(!empty($data)){echo $pages;} ?>
                    </div>
        </div>
    </div>
    <?php include_once VIEWS.'inc/footer.php'; ?>
<?php echo static_file('web/js/main.js');?>
<script type="text/javascript">
    $(".job dd").eq(0).children(".job-txt").show();
    $(".job dd .job-line").click(function(){
        if($(this).hasClass("job-line-a")){
            $(this).removeClass("job-line-a");
            $(this).siblings(".job-txt").hide(800);
        }else{
            $(this).addClass("job-line-a");
            $(this).parents("dd").siblings().children(".job-line").removeClass("job-line-a");
            $(this).siblings(".job-txt").show(800);
            $(this).parents("dd").siblings().children(".job-txt").hide(800);
        }
    })
    $(".w-nav li .nav-a").eq(5).addClass("zoujin-h");
    $(".body-nav li a").eq(0).addClass("fong");
</script>
</body>
</html>