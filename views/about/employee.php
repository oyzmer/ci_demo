<?php 
if(isset($reg[0])){$cid=$reg[0];}else{$cid=9;}
$CI->load->model('page_model','mpage');
$single= $CI->mpage->get_one(array('cid'=>$cid));
$CI->load->model('banner_model','mbanner');
$where= array('cid' =>$cid+1,'audit'=>1,'photo !='=>'');
$data= $CI->mbanner->get_list(5,0,'',$where); 
$list= $CI->mbanner->get_all($where); 
$sum=ceil(count($list)/5);


if($cid==9){$sy=3;$tname="员工风采";}
if($cid==13){$sy=5;$tname="党群建设";}
if($cid==16){$sy=6;$tname="上级关怀";}
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
    		<div class="w750">
                <div class="employee">
                   <?php if(!empty($single['content'])){echo $single['content'];} ?>
                </div>
                <div class="yuangong-box">
                   <dl class="employee-list">
                   <?php foreach ($data as $k => $r) {  if($k%2==0){?>
                        <dt>
                            <a href="<?php echo get_photo($r['photoinfo']); ?>" class="lightbox" style="display:inline-block" title="<?php echo $r['title']; ?>">
                                <img src="<?php echo get_photo($r['photo']); ?>"alt="<?php echo get_photoalt($r['photo']); ?>"   width="143" height="143" >
                            </a>
                            <div class="employee-list-txt">
                                <h2><?php echo $r['title']; ?></h2>
                                <h3><?php echo $r['link']; ?></h3>
                            </div>
                        </dt>
                        <?php }else{ ?>
                        <dd>
                            <div class="employee-list-txt">
                                <h2><?php echo $r['title']; ?></h2>
                                <h3><?php echo $r['link']; ?></h3>
                            </div>
                            <a href="<?php echo get_photo($r['photoinfo']); ?>"  class="lightbox" style="display:inline-block" title="<?php echo $r['title']; ?>">
                                <img src="<?php echo get_photo($r['photo']); ?>"  width="143" height="143" alt="<?php echo get_photoalt($r['photo']); ?>">
                            </a>
                        </dd>
                        <?php } }?>
                    </dl>
                </div>
                <?php if($sum>1){ ?>
                <a href="<?php echo site_url('ajax/e_ajax'); ?>" data-page="2" data-sum="<?php echo $sum; ?>" class="employee-more">MORE</a>
                <?php } ?>
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
    Scroll($(".idea-box"),$(".idea-btn .i-left"),$(".idea-btn .i-right"),916,0);
    $(".w-nav li .nav-a").eq(0).addClass("zoujin-h");
    $(".body-nav li a").eq(3).addClass("fong");
    $(".employee-more").on("click",function(e){
        e.preventDefault();   
        var page=$(this).attr("data-page");   
        var sum=$(this).attr("data-sum");   
       var html=$(this).attr("href")+'/'+page;
       $.get(html,function(data){
          $(".yuangong-box").append(data);
          if(page<sum){
           $(".employee-more"). attr("data-page",page+1); 
           }else{
            $(".employee-more").hide();
           }    
       })

    })
</script>
</body>
</html>