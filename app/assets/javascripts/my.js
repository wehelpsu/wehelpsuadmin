$(document).ready(function(){
$("#tabs").each(function(){
					var $active, $content, $links = $(this).find('a');
					
					$active = $links.first().addClass('active');
					$links.first().parents('li').addClass('active');
					$content = $($active.attr('href')); 
					
					$links.not(':first').each(function () {
						$($(this).attr('href')).hide();
					});
});

$(".login_button").click(function(){
	url=$("#login_container").attr("path");
	$.get(url,function(data,status){
		$("#login_container").html(data)
		  $(".login").fadeIn()
			$(".about_us").hide()
	  });
	
	

});
$(".about_us_button").click(function(){
$(".about_us").fadeIn()
$(".login").hide()
//$(".about_us_button").animate({height : 400, width:800 }, 'slow');
});
});
