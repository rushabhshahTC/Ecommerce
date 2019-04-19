# $( document ).on('turbolinks:load', function() {
#     $("#new_product").validate({
#         rules: {
#         "product[name]": "required",
#         "product[price]": "required"
#         }

#     });
# })

jQuery ->
    $('#product_sub_category_id').parent().hide()
    subcategory = $('#product_sub_category_id').html()
    $('#product_category_id').change ->
        category = $('#product_category_id :selected').text()
        options = $(subcategory).filter("optgroup[label='#{category}']").html()
        if options
            $('#product_sub_category_id').html(options)
            $('#product_sub_category_id').parent().show()
        else
            $('#product_sub_category_id').empty()
            $('#product_sub_category_id').parent().hide()