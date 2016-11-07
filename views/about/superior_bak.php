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
                    <div class="idea-btn">
                        <span class="i-left"></span>
                        <span class="i-right"></span>
                    </div>
                    <div class="super-out-txt">
                        <p>
                            国星生化自2007年成立以来，获得了各界人士的大力支持，随着公司影响力扩大、园林化工厂的建设，社会各界人士莅临公司参观，并指导公司的建设发展工作，现在，公司已成为当地园林化工厂的名片、各级政府接待的重要场地。
                        </p>
                    </div>
                    <div class="super-box">
                        <ul class="super">
                            <li>
                                <div class="super-li-box">
                                    <a href="<?php echo static_file('web/img/apic_03.jpg'); ?>"  class="lightbox" style="display:inline-block" title="省长王三运来公司视察并发表">
                                        <img src="<?php echo static_file('web/img/apic_03.jpg'); ?>"  width="281" height="178" alt="">
                                    </a>
                                    <div class="sup-green-txt">
                                        <h2>省长王三运来公司视察并发表重要讲话</h2>
                                        <div class="sup-green">
                                            <h3>08</h3>
                                            <h4>2015</h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="super-li-box">
                                    <a href="<?php echo static_file('web/img/apic_05.jpg'); ?>"  class="lightbox" style="display:inline-block" title="省长王三运来公司视察并发表">
                                        <img src="<?php echo static_file('web/img/apic_05.jpg'); ?>"  width="281" height="178" alt="">
                                    </a>
                                    <div class="sup-green-txt">
                                        <h2>省长王三运来公司视察并发表重要讲话</h2>
                                        <div class="sup-green">
                                            <h3>08</h3>
                                            <h4>2015</h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="super-li-box">
                                    <a href="<?php echo static_file('web/img/apic_07.jpg'); ?>"  class="lightbox" style="display:inline-block" title="省长王三运来公司视察并发表">
                                        <img src="<?php echo static_file('web/img/apic_07.jpg'); ?>"  width="281" height="178" alt="">
                                    </a>
                                    <div class="sup-green-txt">
                                        <h2>省长王三运来公司视察并发表重要讲话</h2>
                                        <div class="sup-green">
                                            <h3>08</h3>
                                            <h4>2015</h4>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="super-li-box">
                                    <a href="<?php echo static_file('web/img/apic_03.jpg'); ?>"  class="lightbox" style="display:inline-block" title="省长王三运来公司视察并发表">
                                        <img src="<?php echo static_file('web/img/apic_03.jpg'); ?>"  width="281" height="178" alt="">
                                    </a>
                                    <div class="sup-green-txt">
                                        <h2>省长王三运来公司视察并发表重要讲话</h2>
                                        <div class="sup-green">
                                            <h3>08</h3>
                                            <h4>2015</h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="super-li-box">
                                    <a href="<?php echo static_file('web/img/apic_05.jpg'); ?>"  class="lightbox" style="display:inline-block" title="省长王三运来公司视察并发表">
                                        <img src="<?php echo static_file('web/img/apic_05.jpg'); ?>"  width="281" height="178" alt="">
                                    </a>
                                    <div class="sup-green-txt">
                                        <h2>省长王三运来公司视察并发表重要讲话</h2>
                                        <div class="sup-green">
                                            <h3>08</h3>
                                            <h4>2015</h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="super-li-box">
                                    <a href="<?php echo static_file('web/img/apic_07.jpg'); ?>"  class="lightbox" style="display:inline-block" title="省长王三运来公司视察并发表">
                                        <img src="<?php echo static_file('web/img/apic_07.jpg'); ?>"  width="281" height="178" alt="">
                                    </a>
                                    <div class="sup-green-txt">
                                        <h2>省长王三运来公司视察并发表重要讲话</h2>
                                        <div class="sup-green">
                                            <h3>08</h3>
                                            <h4>2015</h4>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="super-li-box">
                                    <a href="<?php echo static_file('web/img/apic_03.jpg'); ?>"  class="lightbox" style="display:inline-block" title="省长王三运来公司视察并发表">
                                        <img src="<?php echo static_file('web/img/apic_03.jpg'); ?>"  width="281" height="178" alt="">
                                    </a>
                                    <div class="sup-green-txt">
                                        <h2>省长王三运来公司视察并发表重要讲话</h2>
                                        <div class="sup-green">
                                            <h3>08</h3>
                                            <h4>2015</h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="super-li-box">
                                    <a href="<?php echo static_file('web/img/apic_05.jpg'); ?>"  class="lightbox" style="display:inline-block" title="省长王三运来公司视察并发表">
                                        <img src="<?php echo static_file('web/img/apic_05.jpg'); ?>"  width="281" height="178" alt="">
                                    </a>
                                    <div class="sup-green-txt">
                                        <h2>省长王三运来公司视察并发表重要讲话</h2>
                                        <div class="sup-green">
                                            <h3>08</h3>
                                            <h4>2015</h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="super-li-box">
                                    <a href="<?php echo static_file('web/img/apic_07.jpg'); ?>"  class="lightbox" style="display:inline-block" title="省长王三运来公司视察并发表">
                                        <img src="<?php echo static_file('web/img/apic_07.jpg'); ?>"  width="281" height="178" alt="">
                                    </a>
                                    <div class="sup-green-txt">
                                        <h2>省长王三运来公司视察并发表重要讲话</h2>
                                        <div class="sup-green">
                                            <h3>08</h3>
                                            <h4>2015</h4>
                                        </div>
                                    </div>
                                </div>
                            </li>
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
    Scroll($(".super-box"),$(".idea-btn .i-left"),$(".idea-btn .i-right"),916,0);
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