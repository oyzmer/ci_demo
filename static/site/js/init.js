$(function(){

    // 头部下拉
    $(".header-links li").hover(function(){
        $(this).children().addClass("on");
        $(this).children(".group").stop(true,true).slideDown(300);
    },function(){
        $(this).children().removeClass("on");
        $(this).children(".group").stop(true,true).slideUp(300);
    });

    // 对分页的链接添加处理
    if (!tools.isEmptyValue($('.pagination').toArray())){
        $('.pagination>a ').each(function(index, el) {
            if ($(el).attr('href') !="#") {
                el.href+=location.search;
            };
        });
    };

      // 验证码
    $('input[name="captchas"]').one('focusin',function(e){
        var img = $(this).nextAll('img.captchas');
       if ($(img).attr('src') == "" 
             || $(img).attr('src') == "#" 
             || RegExp('blank.png').test($(img).attr('src')) ) {
                $(img).attr('src',SITE_URL+'captchas?t='+Math.random()*10);
            };
    });

     if ($('img.captchas').attr('src') == "" || $('img.captchas').attr('src') == "#" || $('img.captchas').attr('src') == "/img/blank.png") {
            $('img.captchas').attr('src',SITE_URL+'captchas?t='+Math.random()*10);
       };

    // 刷新验证码
    $('img.captchas').click(function(e){
        $(this).attr('src',SITE_URL+'captchas?t='+Math.random()*10);
    });


});


/**
 * @brief 创建表单验证
 * 注意引用  jquery.validate.js 和 jquery.validate.lang.cn.js
 * @param frm  表单 Id
 * @param rules 验证规则
 */
function make_validate(frm,rules,messages,inline){
    if (inline == 0) {
        inline = "block";
    }else{
        inline = "inline";
    }
    $('#'+frm).validate({
        ignore: ".ignore", // 忽略
        rules:rules,
        messages:messages,
        errorClass: "help-"+inline+" validate",
        errorElement: "span",
        highlight:function(element, errorClass, validClass) {
            $(element).removeClass('success');
            $(element).addClass('error');
        },
        unhighlight: function(element, errorClass, validClass) {
            $(element).removeClass('error');
            $(element).addClass('success');
        }
        ,errorPlacement: function(error, element) {
            if (inline == "block") {
                error.appendTo(element.parents());
            }else{
                element.after(error);
            }
        }
    });
}


/**
 * @brief 创建表单验证
 * 注意引用  jquery.validate.js 和 jquery.validate.lang.cn.js
 * @param frm  表单 Id
 * @param rules 验证规则
 */
function make_validate_feedback(frm,rules,messages,inline){
    if (inline == 0) {
        inline = "block";
    }else{
        inline = "inline";
    }
    $('#'+frm).validate({
        ignore: ".ignore", // 忽略
        rules:rules,
        messages:messages,
        errorClass: "help-"+inline+" validate",
        errorElement: "span",
        highlight:function(element, errorClass, validClass) {
            $(element).parent().removeClass('success');
            $(element).parent().addClass('error');
        },
        unhighlight: function(element, errorClass, validClass) {
            $(element).parent().removeClass('error');
            $(element).parent().addClass('success');
        }
        ,errorPlacement: function(error, element) {
            if (inline == "block") {
                error.appendTo(element.parents());
            }else{
                element.after(error);
            }
        }
    });
}


/**
 * @brief 创建表单验证
          带有返回函数, 可以验证后直接用ajax处理
 * 注意引用  jquery.validate.js 和 jquery.validate.lang.cn.js
 * @param frm  表单 Id
 * @param rules 验证规则
 */
function make_validate_submit(frm,rules,messages,submit_fun,inline){
    if (inline == 0) {
        inline = "block";
    }else{
        inline = "inline";
    }
    $('#'+frm).validate({
        ignore: ".ignore", // 忽略
        rules:rules,
        messages:messages,
        errorClass: "help-inline validate",
        errorElement: "span",
        highlight:function(element, errorClass, validClass) {
            $(element).removeClass('success');
            $(element).addClass('error');
        },
        unhighlight: function(element, errorClass, validClass) {
            $(element).removeClass('error');
            $(element).addClass('success');
        },
        submitHandler:function(form){
            //form.preventDefault();
            submit_fun(form);
        }
    });
}

$.fn.serializeObject = function(){
    var o = {};
    var a = this.serializeArray();
    $.each(a, function() {
        if (o[this.name]) {
            if (!o[this.name].push) {
                o[this.name] = [o[this.name]];
            }
            o[this.name].push(this.value || '');
        } else {
            o[this.name] = this.value || '';
        }
    });
    return o;
};
