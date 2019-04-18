$( document ).on('turbolinks:load', function() {
    $(".edit_profile").validate({
        rules: {
        "profile[first_name]": "required",
        "profile[last_name]": "required",
        "profile[phone_number]": {required: true, minlength: 10},
        "profile[city]": "required"
        }

    });
})