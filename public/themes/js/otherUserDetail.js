$(document).ready(function() {

    $('#user_name').editable({
        title: 'Nhập Họ tên',
        success: function(response,newValue) {
            $("#userHeader").html(newValue);
        }
    });

    $('#user_birthday').editable({
        title: 'Nhập ngày sinh',
        format: 'yyyy-mm-dd',
        viewformat: 'dd/mm/yyyy',
        success: function(response,newValue) {
            $("#user_birthday").html(newValue);
        }


    });

    $('#user_sex').editable({
        title: 'Chọn giới tính',
        source: [
            {value: "NAM", text: 'Nam'},
            {value: "NỮ", text: 'Nữ'},
            {value: "KHÁC", text: 'Khác'}],

        success: function(response,newValue) {
            $("#userHeader").html(newValue);
        }


    });
    $('#user_address').editable({
        title: 'Nhập địa chỉ',
        rows: 5,
        success: function(response,newValue) {
            $("#userHeader").html(newValue);
        }
    });

    $('#user_phone').editable({
        validate: function(value) {
            var regex = /^[0-9]+$/;
            if(! regex.test(value)) {
                return 'numbers only!';
            }
        },
        title: 'Nhập số điện thoại',
        success: function(response,newValue) {
            $("#userHeader").html(newValue);
        }
    });

    $('#enable').click(function() {
        $('#user .editable').editable('toggleDisabled');
    });
});