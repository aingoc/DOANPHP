$(function() {

	$('#login-form-link').click(function(e) {
		$("#login-form").delay(100).fadeIn(100);
		$("#register-form").fadeOut(100);
		$('#register-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});
	$('#register-form-link').click(function(e) {
		$("#register-form").delay(100).fadeIn(100);
		$("#login-form").fadeOut(100);
		$('#login-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});

});
$(document).ready(function() {
	$('#login-form').bootstrapValidator({
		message: 'Thông tin này không được để trống !!',
		feedbackIcons: {
			valid: 'glyphicon glyphicon-ok',
			invalid: 'glyphicon glyphicon-remove',
			validating: 'glyphicon glyphicon-refresh'
		},
		fields: {
			passwordLogin: {
				validators: {
					notEmpty: {
						message: 'Vui lòng nhập mật khẩu !!'
					}
				}
			},
			usernameLogin: {
				message: 'Tên đăng nhập không được để trống !!',
				validators: {
					notEmpty: {
						message: 'Vui lòng nhập tên đăng nhập !!'
					},
					stringLength: {
						min: 6,
						max: 30,
						message: 'Tên đăng nhập phải từ 6-30 kí tự !!'
					}
				}
			}
		}
	});
});
$(document).ready(function() {
	$('#register-form').bootstrapValidator({
		message: 'Thông tin này không được để trống !!',
		feedbackIcons: {
			valid: 'glyphicon glyphicon-ok',
			invalid: 'glyphicon glyphicon-remove',
			validating: 'glyphicon glyphicon-refresh'
		},
		fields: {
			Ten: {
				message: 'Vui lòng nhập đầy đủ họ tên để chúng tôi tiện xưng hô ! Thanks !',
				validators: {
					notEmpty: {
						message: 'Vui lòng nhập đầy đủ họ tên để chúng tôi tiện xưng hô ! Thanks!'
					}
				}
			},
			username1: {
				message: 'Tên đăng nhập không được để trống !!',
				validators: {
					notEmpty: {
						message: 'Vui lòng nhập tên đăng nhập !!'
					},
					stringLength: {
						min: 6,
						max: 30,
						message: 'Tên đăng nhập phải từ 6-30 kí tự !!'
					}
				}
			},

			DiaChi: {
				message: 'Địa chỉ giúp chúng tôi có thể giao hàng tận nơi cho bạn. Không được bỏ trống !',
				validators: {
					notEmpty: {
						message: 'Địa chỉ giúp chúng tôi có thể giao hàng tận nơi cho bạn ! Vì vậy bạn hãy nhập đúng địa chỉ của mình !'
					}

				}
			},
			password1: {
				message: 'Mật khẩu không được trống !',
				validators: {
					notEmpty: {
						message: 'Vui lòng nhập mật khẩu !'
					}

				}
			},
			email: {
				validators: {
					notEmpty: {
						message: 'example@gmail.com ! Email giúp chúng tôi có thể trả lời mọi thắc mắc của bạn. Vì vậy bạn hãy nhập đúng email của mình !'
					},
					regexp: {
						regexp: /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/i,
						message: 'Email giúp chúng tôi có thể trả lời mọi thắc mắc của bạn. Vì vậy bạn hãy nhập đúng email của mình !'
					}
				}
			},
			SDT: {
				message: 'Số điện thoại không được trống !',
				validators: {
					notEmpty: {
						message: 'Số điện giúp chúng tôi có thể liên lạc với bạn. Vì vậy bạn hãy nhập đúng SĐT của mình ! '
					},
					stringLength: {
						min: 8,
						max: 11,
						message: 'SĐT phải từ 8-11 số !'
					}
				}
			}
		}
	});
});
