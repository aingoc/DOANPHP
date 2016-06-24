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
			viewformat: 'dd/mm/yyyy'
		});

		$('#user_sex').editable({
			title: 'Chọn giới tính',
			source: [
				{value: "NAM", text: 'Nam'},
				{value: "NỮ", text: 'Nữ'},
				{value: "KHÁC", text: 'Khác'}]


		});
		$('#user_address').editable({
			title: 'Nhập địa chỉ',
			rows: 5
		});

		$('#user_phone').editable({
			validate: function(value) {
				var regex = /^[0-9]{8,11}$/;
				if(! regex.test(value)) {
					return 'Số điện thoại không hợp lý';
				}
			},
			title: 'Nhập số điện thoại'
		});

		$('#user_age').editable({
			validate: function(value) {
				var regex = /^[0-9]{1,2}$/;
				if(! regex.test(value)) {
					return 'Số tuổi không hợp lệ';
				}
			},
			title: 'Nhập số tuổi'
		});

		$('#user_email').editable({
			validate: function(value) {
				var regex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/i;
				if(! regex.test(value)) {
					return 'Email không hợp lệ';
				}
			},
			title: 'Nhập Email'
		});

		$("#password").filter(function() {
			return true;
		}).each(function() {
			$(this).text("***********");
		});

		$('#password').editable({
			type: 'password',
			title: 'Nhập Password mới',
		});

		$('#user .editable').editable('toggleDisabled');
		
				var check=0;
		$('#enable').click(function() {
			
			$('#user .editable').editable('toggleDisabled');
			if(check == 0){
				$('#enable').css('background', 'rgb(102, 255, 136)');
				check++;
			}else{
				$('#enable').css('background', 'rgb(228, 234, 239)');
				check = 0;
			}
		});
	});
