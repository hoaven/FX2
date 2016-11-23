
//Ajax刷新
$(function(){
	/**
	 * 初始化页面获取推荐数据:type1
	 */
	$.ajax({
		type: 'POST',
		url:getRootPath() +'/Recommend/findrenthouse.do',
		data:{'type':1},//ajax刷新
		dataType: 'json',
		success: function(data){
			var result = '';
			if(data.status=='false'){
				$('.ctj1').empty();
				$('.ctj1').append('<div style="height:300px">暂无数据</div>');
			}else{
				for(var i = 0; i < data.length; i++){//只显示两组
					result +=   '<li><a href="'+getRootPath() +'/House/housedetail.do?id='+data[i].id+'">'
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
					+'</a></li>';
				}
				// 为了测试，延迟1秒加载
				setTimeout(function(){
					$('.ctj1').empty()//清空lists元素下的数据
					$('.ctj1').append(result);
				});
			}
		}
	});
	
	$('.row1').on('click',function(){
		$.ajax({
			type: 'POST',
			url:getRootPath() +'/Recommend/findrenthouse.do',
			data:{'type':1},//ajax刷新
			dataType: 'json',
			success: function(data){
				var result = '';
				if(data.status=='false'){
					$('.ctj1').empty();
					$('.ctj1').append('<div style="height:300px">暂无数据</div>');
				}else{
					for(var i = 0; i < data.length; i++){//只显示两组
						result +=   '<li><a href="'+getRootPath() +'/House/housedetail.do?id='+data[i].id+'">'
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
						+'</a></li>';
					}
					// 为了测试，延迟1秒加载
					setTimeout(function(){
						$('.ctj1').empty()//清空lists元素下的数据
						$('.ctj1').append(result);
					});
				}
			}
		});
	})
	
		$('.row2').on('click',function(){
		$.ajax({
			type: 'POST',
			url:getRootPath() +'/Recommend/findrenthouse.do',
			data:{'type':2},//ajax刷新
			dataType: 'json',
			success: function(data){
				var result = '';
				if(data.status=='false'){
					$('.ctj2').empty();
					$('.ctj2').append('<div style="height:300px">暂无数据</div>');
				}else{
					for(var i = 0; i < data.length; i++){//只显示两组
						result +=   '<li><a href="'+getRootPath() +'/House/housedetail.do?id='+data[i].id+'">'
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
						+'</a></li>';
					}
					// 为了测试，延迟1秒加载
					setTimeout(function(){
						$('.ctj2').empty()//清空lists元素下的数据
						$('.ctj2').append(result);
					});
				}
			}
		});
	})
	
		$('.row3').on('click',function(){
		$.ajax({
			type: 'POST',
			url:getRootPath() +'/Recommend/findrenthouse.do',
			data:{'type':3},//ajax刷新
			dataType: 'json',
			success: function(data){
				var result = '';
				if(data.status=='false'){
					$('.ctj3').empty();
					$('.ctj3').append('<div style="height:300px">暂无数据</div>');
				}else{
					for(var i = 0; i < data.length; i++){//只显示两组
						result +=   '<li><a href="'+getRootPath() +'/House/housedetail.do?id='+data[i].id+'">'
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
						+'</a></li>';
					}
					// 为了测试，延迟1秒加载
					setTimeout(function(){
						$('.ctj3').empty()//清空lists元素下的数据
						$('.ctj3').append(result);
					});
				}
			}
		});
	})
	
	
	/**
	 * 换一批
	 */
	$('.ctjhu1').on('click',function(){
		$('.ctj1').empty();
		$.ajax({
			type: 'POST',
			url:getRootPath() +'/Recommend/findrenthouse.do',
			data:{'type':1},//ajax刷新
			dataType: 'json',
			success: function(data){
				var result = '';
				if(data.status=='false'){
					$('.ctj1').empty();
					$('.ctj1').append('<div style="height:300px">暂无数据</div>');
				}else{
					for(var i = 0; i < data.length; i++){//只显示两组
						result +=   '<li><a href="'+getRootPath() +'/House/housedetail.do?id='+data[i].id+'">'
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
						+'</a></li>';
					}
					// 为了测试，延迟1秒加载
					setTimeout(function(){
						$('.ctj1').empty()//清空lists元素下的数据
						$('.ctj1').append(result);
					});
				}
			}
		});
	})
	$('.ctjhu2').on('click',function(){
		$.ajax({
			type: 'POST',
			url:getRootPath() +'/Recommend/findrenthouse.do',
			data:{'type':2},//ajax刷新
			dataType: 'json',
			success: function(data){
				var result = '';
				if(data.status=='false'){
					$('.ctj2').empty();
					$('.ctj2').append('<div style="height:300px">暂无数据</div>');
				}else{
					for(var i = 0; i < data.length; i++){//只显示两组
						result +=   '<li><a href="'+getRootPath() +'/House/housedetail.do?id='+data[i].id+'">'
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
						+'</a></li>';
					}
					// 为了测试，延迟1秒加载
					setTimeout(function(){
						$('.ctj2').empty()//清空lists元素下的数据
						$('.ctj2').append(result);
					});
				}
			}
		});
	})
	$('.ctjhu3').on('click',function(){
		$.ajax({
			type: 'POST',
			url:getRootPath() +'/Recommend/findrenthouse.do',
			data:{'type':3},//ajax刷新
			dataType: 'json',
			success: function(data){
				var result = '';
				if(data.status=='false'){
					$('.ctj3').empty();
					$('.ctj3').append('<div style="height:300px">暂无数据</div>');
				}else{
					for(var i = 0; i < data.length; i++){//只显示两组
						result +=   '<li><a href="'+getRootPath() +'/House/housedetail.do?id='+data[i].id+'">'
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
						+'</a></li>';
					}
					// 为了测试，延迟1秒加载
					setTimeout(function(){
						$('.ctj3').empty()//清空lists元素下的数据
						$('.ctj3').append(result);
					});
				}
			}
		});
	})
})