<p></p>
<script>
$(function(){
    form_error = [];
    <?php 
    if ($errs = form_errors()) {
        foreach ($errs as $key => $value) {
            echo "form_error.push('".$key."');";
        }
    }?>
    $.each(form_error, function(i, v) {
        $('input[name="'+v+'"]').addClass('error');
         $('textarea[name="'+v+'"]').addClass('error');
        $('input[name="'+v+'"]').next("span").addClass('error');
    });
});
</script>
