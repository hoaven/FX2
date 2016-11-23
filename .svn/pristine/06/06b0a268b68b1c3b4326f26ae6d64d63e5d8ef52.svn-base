
//Ajax刷新
$(function(){
	/**
	 * 初始化页面获取推荐数据
	 */
	$.ajax({
		type: 'POST',
		url:getRootPath() +'/Recommend/findrenthouse.do',
		data:{'type':$('.bigtype').val()},//ajax刷新
		dataType: 'json',
		success: function(data){
			var result = '';
			if(data.status=='false'){
				$('.tuijian'+$('.bigtype').val()).empty();
				$('.tuijian'+$('.bigtype').val()).append('<div style="height:300px">暂无数据</div>');
			}else{
				for(var i = 0; i < data.length; i++){//只显示两组
					result +=   '<a href="'+getRootPath() +'/House/housedetail.do?id='+data[i].id+'">'
					+'<div class="carditems_dt"><img src="'+getRootPath() +data[i].picurl+'" ></div>'
					+'<div class="carditems_dd">'
					+'<h3>'
					+'<span class="h3">'+data[i].title+'</span>'
					+'<span class="ad_deposit">'
					+'<em style="'+data[i].trusstyle+'">托管</em></span>'
					+'</h3>'
					+'<h4>'
					+'<span class="h4 new_price">'+data[i].rentaparttype+' |&nbsp;'+data[i].area+'m²</span>'
					+'<span class="ad_price" style="font-size: 16px">'+data[i].price+'元/月</span>'
					+'</h4>'
					+'<p>'
					+'<span class="h4 new_price">'+data[i].address+'</span>'
					+'<span class="ad_collect">已有'+data[i].colnum+'人收藏</span>'
					+'</p>'
					+'<p>'
					+'<span class="rbox6 bGreen" style="font-size: 12px">'+data[i].chicktime+'入住</span>'
					+'</p>'
					+'</div>'
					+'</a>';
				}
				// 为了测试，延迟1秒加载
				setTimeout(function(){
					$('.tuijian'+$('.bigtype').val()).empty()//清空lists元素下的数据
					$('.tuijian'+$('.bigtype').val()).append(result);
				});
			}
		}
	});
})