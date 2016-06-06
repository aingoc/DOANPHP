$('.SeeMore2').click(function(){

		if($(".accordion-body").css('display') == 'none') {
			$(".accordion-heading").hide();
			$(".accordion-body").show();

		}

	});


$('.SeeMore1').click(function(){
	$(".accordion-heading").show();
	$(".accordion-body").hide();
});