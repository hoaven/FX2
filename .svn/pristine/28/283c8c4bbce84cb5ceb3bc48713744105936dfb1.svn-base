
//Ajax刷新
$(function(){
	/**
	 * 初始化页面获取推荐数据
	 */
	$.ajax({
		type: 'POST',
		url:getRootPath() +'/Recommend/findrenthouse.do',
		data:{'type':4},//ajax刷新
		dataType: 'json',
		success: function(data){
			var result = '';
			if(data.status=='false'){
				$('.daytj').empty();
				$('.daytj').append('<div style="height:300px">暂无数据</div>');
			}else{
				for(var i = 0; i < data.length; i++){//只显示两组
					result +=   '<a href="'+getRootPath() +'/House/housedetail.do?id='+data[i].id+'">'
					+'<img src="'+getRootPath() +data[i].picurl+'" >'
					+'<p><br/>'
					+'<span style="color:#000;">'+data[i].title+'</span>'
					+'<br/>'
					+'<span class="h4 new_price">'+data[i].rentaparttype+' | '+data[i].area+'m²</span>'
					+'</p>'
					+'<span class="ad_price" style="font-size: 16px">'+data[i].price+'元/月</span>'
					+'</a>';
				}
				// 为了测试，延迟1秒加载
				setTimeout(function(){
					$('.daytj').empty()//清空lists元素下的数据
					$('.daytj').append(result);
				});
			}
		}
	});
})