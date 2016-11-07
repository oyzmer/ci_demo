$(function(){
    rules = {
        name: {
            required:true
            ,minlength:1
            ,maxlength:100
        },
        email: {
            required:true
            ,minlength:1
            ,maxlength:100
            ,email:true
        },
        nation: {
            required:true
            ,minlength:1
            ,maxlength:20
        },
        age: {
            required:true
            ,minlength:1
            ,maxlength:20
            ,digits:true
        },
        politic: {
            required:true
            ,minlength:1
            ,maxlength:100
        },
        birthplace: {
            required:true
            ,minlength:1
            ,maxlength:100
        },
        edu: {
            required:true
            ,minlength:1
            ,maxlength:100
        },
        school: {
            required:true
            ,minlength:1
            ,maxlength:100
        },
        major: {
            required:true
            ,minlength:1
            ,maxlength:100
        },
        graduation: {
            required:true
            ,minlength:1
            ,maxlength:100
        },
        tel: {
            required:true
            ,minlength:1
            ,maxlength:20
            ,digits:true
        },
        content: {
            required:true
            ,minlength:1
            ,maxlength:100
        }
    };
    messages = {
        name: {
            required: ""
            ,minlength: ""
            ,maxlength: ""
        },
        email: {
            required: ""
            ,minlength: ""
            ,maxlength: ""
            ,email: ""
        },
        nation: {
            required: ""
            ,minlength: ""
            ,maxlength: ""
        },
        age: {
            required: ""
            ,minlength: ""
            ,maxlength: ""
            ,digits: ""
        },
        politic: {
            required: ""
            ,minlength: ""
            ,maxlength: ""
        },
        birthplace: {
            required: ""
            ,minlength: ""
            ,maxlength: ""
        }
        ,
        edu: {
            required: ""
            ,minlength: ""
            ,maxlength: ""
        },
        school: {
            required: ""
            ,minlength: ""
            ,maxlength: ""
        },
        major: {
            required: ""
            ,minlength: ""
            ,maxlength: ""
        },
        graduation: {
            required: ""
            ,minlength: ""
            ,maxlength: ""
        },
        tel: {
            required: ""
            ,minlength: ""
            ,maxlength: ""
            ,digits: ""
        },
        content: {
            required: ""
            ,minlength: ""
            ,maxlength: ""
        }
    }
    make_validate('frm-apply',rules,messages);
});
