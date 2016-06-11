$(document).ready(function() {
    //Chạy khi page bắt đầu
    var total = 0;
    var bookCost;
    var quality;
    var BookID;
    var sale = 0;


    $.ajax({
        url: 'index.php?c=cart&a=CartTotal',
        success: function(response) {
            $(".cartTotal").text(response);

        }
    });

    $(".quality").each(function(){
        var bookCost = parseInt($(this).parentsUntil('.panel-body').find('.bookCost').attr('value'));
        var quality = $(this).val();
        if(quality == 0)
        {
            quality = $(this).attr('value');
            $(this).val(quality);
        }
        total = total + (quality * bookCost);


    });

    if(total >200000 && total <= 500000)
    {
        sale = total - ((total * 96)/100);
        total = (total * 96)/100;
        $('.total').text(total + " VNĐ (Đã giảm giá 4% - "+sale+"VNĐ)");
    }
    else if(total > 500000)
    {
        sale = total - ((total * 88)/100);
        total = (total * 88)/100;
        $('.total').text(total + " VNĐ (Đã Giảm giá 12% - "+sale+"VNĐ)");
    }
    else
    {
        sale=0;
        $('.total').text(total + " VNĐ");
    }


    $('.remove').click(function() {
        bookCost = parseInt($(this).parentsUntil('.panel-body').find('.bookCost').attr('value'));
        quality = $(this).parentsUntil('.panel-body').find('.quality').val();
        bookID = $(this).attr('bookID');
        $(this).parentsUntil('.panel-body').fadeOut(500,function() { $(this).remove(); });

        total = (total - (bookCost * quality)) + sale;

        if(total >200000 && total <= 500000)
        {

            sale = total - ((total * 96)/100);
            total = (total * 96)/100;
            $('.total').text(total + " VNĐ (Đã giảm giá 4% - "+sale+"VNĐ)");
        }
        else if(total > 500000)
        {
            sale = total - ((total * 88)/100);
            total = (total * 88)/100;
            $('.total').text(total + " VNĐ (Đã Giảm giá 12% - "+sale+"VNĐ)");
        }
        else
        {
            sale=0;
            $('.total').text(total + " VNĐ");
        }

        var bookID = $(this).attr('bookID');

        $.ajax({
            url: 'index.php?c=cart&a=RemoveSessionBookID',
            dataType:'json',
            data: {
                id: bookID
            },
            type: "POST",
            success: function(response) {
                $(".cartTotal").text(response);

            }
        });
    });

    $( ".quality" ).change(function() {
        total = 0;
        $(".quality").each(function(){
            bookCost = parseInt($(this).parentsUntil('.row').find('.bookCost').attr('value'));
            quality = $(this).val();
            bookID = $(this).parentsUntil('.row').find('.remove').attr('bookID');
            if(quality == 0)
            {
                quality = $(this).attr('value');
                $(this).val(quality);
            }
            total = total + (quality * bookCost);

            $.ajax({
                url: 'index.php?c=cart&a=UpdateSessionBookID',
                dataType:'json',
                data: {
                    id: bookID,
                    quality: quality
                },
                type: "POST"
            });



        });

        if(total > 200000 && total <= 500000)
        {
            sale = total - ((total * 96)/100);
            total = (total * 96)/100;
            $('.total').text(total + " VNĐ (Đã giảm giá 4% - "+sale+"VNĐ)");
        }
        else if(total > 500000)
        {
            sale = total - ((total * 88)/100);
            total = (total * 88)/100;
            $('.total').text(total + " VNĐ (Đã giảm giá 12% - "+sale+"VNĐ)");
        }
        else
        {
            sale = 0;
            $('.total').text(total + " VNĐ");
        }


    });
});