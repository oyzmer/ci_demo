<?php 
$CI->load->model('recruit_model','mrecruit');
if(!isset($reg[0])){show_404();}
$rs = $CI->mrecruit->get_one($reg[0]);
!$rs and show_404();


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
            <?php include_once VIEWS.'inc/jnav.php'; ?>
            <dl class="job">
                <?php echo form_open(site_url('apply'),array("enctype"=>"multipart/form-data","id"=>"frm-apply","name"=>"frm-apply")); ?>
                <div class="message_reg">
                    <?php include_once VIEWS.'form_errors.php'; ?>
                   </div>
                    <table id="tb">
                        <tr>
                            <td class='td1'>姓 名：</td>
                            <td class='td3'><input class="td2" type="text" id="name" name="name" value="<?php echo set_value("name") ?>"class="feedback_input"><span id="spred">*</span></td>
                            <td class='td1'>性 别：</td>
                            <td class='td3'>
                                <label class="l1"><input type="radio" name="gender" checked value="男"> 男</label>
                                <label class="l1"><input type="radio" name="gender" value="女"> 女</label><span id="spred">*</span>
                            </td>
                            <td class='td1'>婚 姻：</td>
                            <td class='td3'>
                                <label class="l1"><input type="radio" name="marriage" checked value="未婚"> 未婚</label>
                                <label class="l1"><input type="radio" name="marriage"  value="已婚"> 已婚</label><span id="spred">*</span>
                            </td>
                        </tr>
                        <tr>
                            <td class='td1'>E-mail:</td>
                            <td class='td3'><input class="td2" type="text" class="feedback_input" value="<?php echo set_value("email") ?>" id="email" name="email"><span id="spred">*</span></td>
                            <td class='td1'>民 族：</td>
                            <td class='td3'><input class="td2" type="text" class="feedback_input" value="<?php echo set_value("nation") ?>" id="nation" name="nation" ><span id="spred">*</span></td>
                            <td class='td1'>年 龄：</td>
                            <td class='td3'><input class='td2' type="text" class="feedback_input" value="<?php echo set_value("age") ?>" id="age" name="age"><span id="spred">*</span></td>
                        </tr>
                        <tr>
                            <td class='td1'>政治面貌：</td>
                            <td class='td3'>
                                <select class="td2" class="feedback_input" id="politic" name="politic" style="width:163px;">
                                    <option value="人民群众">人民群众</option>
                                    <option value="共青团员">共青团员</option>
                                    <option value="中共预备党员">中共预备党员</option>
                                    <option value="中共党员">中共党员</option>
                                </select>
                                <!-- <input class='td2' type="text" class="feedback_input" value="<?php echo set_value("politic") ?>" id="politic" name="politic" > --><span id="spred">*</span>
                            </td>
                            <td class='td1'>籍 贯：</td>
                            <td class='td3'><input class='td2' type="text" class="feedback_input" value="<?php echo set_value("birthplace") ?>" id="birthplace" name="birthplace"><span id="spred">*</span></td>
                            <td class='td1'>文化程度：</td>
                            <td class='td3'><input class='td2' type="text" class="feedback_input" value="<?php echo set_value("edu") ?>" id="edu" name="edu" ><span id="spred">*</span></td>
                        </tr>
                        <tr>
                            <td class='td1'>毕业学校：</td>
                            <td class='td3'><input class="td2" type="text" class="feedback_input" value="<?php echo set_value("school") ?>" id="school" name="school" ><span id="spred">*</span></td>
                            <td class='td1'>专 业：</td>
                            <td class='td3'><input class="td2" type="text" class="feedback_input" value="<?php echo set_value("major") ?>" id="major" name="major"><span id="spred">*</span></td>
                            <td class='td1'>毕业时间：</td>
                            <td class='td3'><input class="td2" type="text" class="feedback_input" value="<?php echo set_value("graduation") ?>" id="graduation" name="graduation" placeholder="年-月-日"><span id="spred">*</span></td>
                        </tr>
                        <tr>
                            <td class='td1'>外语水平：</td>
                            <td class='td3'><input class="td2" type="text" class="feedback_input" value="<?php echo set_value("language") ?>" id="language" name="language" ><span id="spred"></span></td>
                            <td class='td1'>应聘职位：</td>
                            <td class='td3'><input class="td2" type="text" readonly="1" class="feedback_input" value="<?php echo $rs['title']; ?>" name="position"><span id="spred">&nbsp;</span></td>
                            <td class='td1'>联系电话：</td>
                            <td class='td3'><input class="td2" type="text" class="feedback_input" value="<?php echo set_value("tel") ?>" id="tel" name="tel" ><span id="spred">*</span></td>
                        </tr>
                        <tr>
                            <td class='td1'>简历上传：</td>
                            <td class="td4" colspan="5"><label for="userfile"><input type="file" size="35" name="userfile"></label><span id="spred">&nbsp;</span></td>
                        </tr>
                        <tr class="tr1">
                            <td class='td1'>个人简历：</td>
                            <td class="td4" colspan="5"><label for="content"><textarea id="content" class="t1" name="content"><?php echo set_value("content") ?></textarea></label><span id="spred">*</span></td>
                        </tr>
                        <tr>
                            <td colspan="5">
                            <input type="hidden" readonly value="<?php echo $rs['id']; ?>" name="rid">
                            <input type="hidden" readonly value="<?php echo $rs['cid']; ?>" name="cid">
                                <input type="submit" value='提交' class="subbtn " />
                                <input type="reset" value='重置' class="subbtn subbtn2" />
                                <span class="ts">带星号必填</span>
                            </td>
                        </tr>
                    </table>
                    <?php echo static_file('site/js/apply.js'); ?>
                
                <?php echo form_close() ?>
            </dl>
        </div>
    </div>
    <?php include_once VIEWS.'inc/footer.php'; ?>
<?php echo static_file('web/js/main.js');?>
<script type="text/javascript">
    $(".job dd").eq(0).children(".job-txt").show();
    $(".job dd .job-line").click(function(){
        // if($(this).hasClass("job-line-a")){
        //     $(this).removeClass("job-line-a");
        //     $(this).siblings(".job-txt").slideUp(800);
        // }else{
            $(this).addClass("job-line-a");
            $(this).parents("dd").siblings().children(".job-line").removeClass("job-line-a");
            $(this).siblings(".job-txt").slideDown(800);
            $(this).parents("dd").siblings().children(".job-txt").slideUp(800);
        // }
    })
    $(".w-nav li .nav-a").eq(5).addClass("zoujin-h");
    $(".body-nav li a").eq(0).addClass("fong");
</script>
</body>
</html>