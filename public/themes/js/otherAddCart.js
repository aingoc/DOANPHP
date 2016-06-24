$(document).ready(function() {

    $('.addCart').click(function() {
        bookID = $(this).attr("bookID");
        $.ajax({
            url: 'index.php?c=cart&a=AddSessionBookID',
            dataType:'json',
            data: {
                id: bookID
            },
            type: "POST",
            success: function(response) {
                $(".cartTotal").text(response);

            }
        });


        var cart = $('.shopping-cart');
        var imgtodrag = $(this).parentsUntil('.item').find("img").eq(0);
        if (imgtodrag) {
            var imgclone = imgtodrag.clone()
                .offset({
                    top: imgtodrag.offset().top,
                    left: imgtodrag.offset().left
                })
                .css({
                    'opacity': '0.5',
                    'position': 'absolute',
                    'height': '350px',
                    'width': '250px',
                    'z-index': '100'
                })
                .appendTo($('body'))
                .animate({
                    'top': cart.offset().top + 10,
                    'left': cart.offset().left + 10,
                    'width': 75,
                    'height': 75
                }, 1000, 'easeInOutExpo');

            setTimeout(function () {
                cart.effect("shake", {
                    times: 2
                }, 200);
            }, 1500);

            imgclone.animate({
                'width': 0,
                'height': 0
            }, function () {
                $(this).detach()
            });
        }

    });

});