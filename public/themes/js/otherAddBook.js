
$(document).ready(function() {
	$('#addBook-form').bootstrapValidator({
		message: 'Thông tin này không được để trống !!',
		feedbackIcons: {
			valid: 'glyphicon glyphicon-ok',
			invalid: 'glyphicon glyphicon-remove',
			validating: 'glyphicon glyphicon-refresh'
		},
		fields: {
			bookName: {
				message: 'Vui lòng nhập đầy đủ tên sách',
				validators: {
					notEmpty: {
						message: 'Vui lòng nhập đầy đủ tên sách'
					}
				}
			},
			description: {
				message: 'Vui lòng nhập giới thiệu về sách',
				validators: {
					notEmpty: {
						message: 'Vui lòng nhập giới thiệu về sách'
					}
				}
			},
			bookCost: {
				message: 'Tên đăng nhập không được để trống !!',
				validators: {
					notEmpty: {
						message: 'Vui lòng nhập tên đăng nhập !!'
					},
					stringLength: {
						min: 0,
						max: 30,
						message: 'Tên đăng nhập phải từ 6-30 kí tự !!'
					}
				}
			}
		}
	});
});
