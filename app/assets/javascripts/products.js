$( document ).on('turbolinks:load', function() {
    $("#new_product").validate({
        rules: {
        "product[name]": "required",
        "product[price]": "required"
        }

    });
})