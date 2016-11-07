<!DOCTYPE html>
<head>
<?php include_once VIEWS.'inc/head.php'; ?>
</head>

<body>
    <?php include_once VIEWS.'inc/header.php'; ?>
    <?php include_once VIEWS.'inc/wnav.php'; ?>
    <div class="fl flash-box" style="width:100%; height:702px;">
        <object classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000' codebase='swflash.cab#version=7,0,19,0" tppabs="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0' width= '100%'  height='702'>
            <param name='movie' value='<?php echo static_file('web/swf/huanbao.swf'); ?>&url=<?php echo site_url ('develop/index'); ?>&isAutoPlay=ture'>
            <param name='quality' value='high'>
            <param name='wmode' value='transparent'>
            <param name='allowfullscreen' value='true'>
            <embed  allowfullscreen='true' src='<?php echo static_file('web/swf/huanbao.swf'); ?>&url=<?php echo site_url ('develop/index'); ?>&isAutoPlay=ture' quality='high' wmode='transparent' pluginspage='http://www.macromedia.com/go/getflashplayer' type='application/x-shockwave-flash' width='100%' height='702px;' >
        </object>
    </div>
    <?php include_once VIEWS.'inc/footer.php'; ?>
<?php echo static_file('web/js/main.js');?>
<script type="text/javascript">
     $(".w-nav li .nav-a").eq(2).addClass("zoujin-h");
</script>
</body>
</html>