<?php 
$CI->load->model('banner_model','mbanner');
$where= array('cid' =>10,'audit'=>1,'photo !='=>'');
if(isset($reg[0])){$page=$reg[0];}else{$page=1;}
$limit = 5;
$count = $CI->mbanner->get_count_all($where);
$pages = _pages(site_url($url_base),$limit,$count,2);
$data = $CI->mbanner->get_list($limit,$limit*($page-1),$orders,$where); 

 ?>
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

<script type="text/javascript">
     $(".lightbox").lightBox();
    Scroll($(".idea-box"),$(".idea-btn .i-left"),$(".idea-btn .i-right"),916,0);
</script>

