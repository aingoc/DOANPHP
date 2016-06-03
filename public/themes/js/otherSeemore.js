$('.SeeMore2').click(function(){
		var $this = $(this);
		$this.toggleClass('SeeMore2');
		if($this.hasClass('SeeMore2')){
			$this.text('Xem thêm');			
		} else {
			$this.text('Rút ngắn');
		}

		if($(".accordion-body").css('display') == 'none') {
			$(".accordion-heading").hide();
			$(".accordion-body").show();
		}
		else
		{
			$(".accordion-heading").show();
			$(".accordion-body").hide();
		}
	});