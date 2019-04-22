$( document ).on('turbolinks:load', function() {
    $("#new_sub_category").validate({
        rules: {
            "sub_category[name]": "required"
        }
    });
})