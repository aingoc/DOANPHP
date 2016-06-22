
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
				message: 'Giá tiền không được để trống !!',
				validators: {
					notEmpty: {
						message: 'Vui lòng nhập giá tiền của sách !!'
					},
					stringLength: {
						min: 4,
						max: 30,
						message: 'số tiền thấp nhất là 1000!!'
					}
				}
			}
		}
	});
});
