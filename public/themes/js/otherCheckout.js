$(document).ready(function() {
    $('#checkout-form').bootstrapValidator({
        message: 'Không được bỏ trống !',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            Ten: {
                message: 'Vui lòng nhập họ tên của bạn !',
                validators: {
                    notEmpty: {
                        message: 'Vui lòng nhập họ tên của bạn !'
                    }
				}
            },
            username1: {
                message: 'Tên đăng nhập không được trống !',
                validators: {
                    notEmpty: {
                        message: 'Vui lòng nhập tên đăng nhập !'
                    },
                    stringLength: {
                        min: 6,
                        max: 30,
                        message: 'Tên đăng nhập phải từ 6 - 30 ký tự !!'
                    }
                }
            },

            DiaChi: {
                message: 'Địa chỉ giao hàng giúp chúng tôi có thể giao hàng đúng nơi !!',
                validators: {
                    notEmpty: {
                        message: 'Vui lòng nhập địa chỉ giao hàng !'
                    }

                }
            },
            email: {
                validators: {
                    notEmpty: {
                        message: 'Email không được trống !'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/i,
                        message: 'Địa chỉ Email có dạng example@email.com !'
                    }
                }
            },
            SDT: {
                message: '',
                validators: {
                    notEmpty: {
                        message: 'Vui lòng nhập số điện thoại !'
                    },
                    stringLength: {
                        min: 10,
                        max: 11,
                        message: 'Số điện thoại phải từ 10 - 11 số !'
                    }
                }
            }
        }
    });
});
