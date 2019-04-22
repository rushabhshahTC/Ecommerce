$( document ).on('turbolinks:load', function() {
    $("#new_coupon").validate({
        rules: {
            "coupon[code]": "required"
        }
    });
})