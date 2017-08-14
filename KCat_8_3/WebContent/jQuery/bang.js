



//$(function(){
//	alert("进入了jq");
//	$.ajax({	
//
//		url:'getTitle.do',
//		type:'POST',
//		success : function(respones,data,xhr){
//			var html='';
//			
//			$.each(data,function(i,e){
//				html+="<div class='shang'><p class='xiahua b'>"+data[i].titleEName+"</p><hr/></div><div class='xiaall'>";
//				alert();
//				/*$.post("${pageContext.request.contextPath}/getBang.do",{videoType:data[i].titleEName},function(data_2){   //循环标题内容
//					$.each(data_2,function(j,f){
//						html+="<div class='xia'><a href='"+ data_2[j].videoUrl +"' target='_blank'><img src='images/" + data_2[j].videoImage + "' /></a><a href='"+ data_2[j].videoUrl +"' target='_blank'><strong>"+ data_2[j].videoName +"</strong></a><a href='"+ data_2[j].videoUrl +"' target='_blank'><p>"+ data_2[j].videoExplain +"</p></a></div>";
//					}); 
//				});*/
//				
//				html+="</div>";
//
//				$(".main").append(html); 
//				
//			});
//		},
//		
//	});
//	
//});