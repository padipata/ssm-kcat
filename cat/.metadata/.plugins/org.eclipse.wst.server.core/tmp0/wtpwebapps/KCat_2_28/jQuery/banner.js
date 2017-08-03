// JavaScript Document
	if(!$(".banner_cont ul").has('li').length){ 
		$("#banner").css("display","none");
	} 
	
	if($(".banner_cont ul").find('li').length==1){ 
		$(".btn_tit").css("display","none");
	}
	else if($(".banner_cont ul").find('li').length>1){
		$(".btn_tit").css("display","block");
	}
	if($(".banner_cont ul").find('li').length>1){
		jQuery("#banner").slide({mainCell:".banner_cont ul",titCell:".effect_hd span",effect:"leftLoop",easing:"easeInOutQuint",delayTime:500,autoPlay:true});
		$("#banner").mousemove(function(){
			$(this).find(".prev").show();
			$(this).find(".next").show();
		}).mouseout(function(){
			$(this).find(".prev").hide();
			$(this).find(".next").hide();
		});
	}
