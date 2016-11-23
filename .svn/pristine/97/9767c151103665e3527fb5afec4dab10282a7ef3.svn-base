
//Ajax刷新
$(function(){
	/**
	 * 微信登陆Ajax获取数据
	 */
	$.ajax({
		type: 'POST',
		url:'https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx3d6fc73e51ece77f&redirect_uri=http%3A%2F%2Fwww.sythen.cn%2FFX2%2FLogin%2FgetCode.do&response_type=code&scope=snsapi_userinfo&state=749#wechat_redirect',
		//注意：执行之后，页面会进行跳转：http://www.sythen.cn/FX2/Login/getCode.do
	});
	
	
	var myArray = new Array();//定义全局数组
	/**
	 * 点击顶部大型房源分类  Ajax动态获取指定的房源数据信息
	 * 首次进入系统进入系统初始化Action，仅仅只是获取第一个分类的数据信息
	 */
		$('.row1').on('click',function(){
			myArray = new Array();//清空全局数组
			$.ajax({
				type: 'POST',
				url:getRootPath() +'/Indez/getHouse.do',
				data:{'type':$('.bigtype1').val()},//ajax刷新
				dataType: 'json',
				success: function(data){
					var result = '';
					if(data.status=='false'){
						$('.lists'+$('.bigtype1').val()).empty();
						$('.lists'+$('.bigtype1').val()).append('<div style="height:300px">暂无数据</div>');
					}else{
						for(var i = 0; i < data.length; i++){
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
							$('.lists'+$('.bigtype1').val()).empty()//清空lists元素下的数据
							$('.lists'+$('.bigtype1').val()).append(result);
						});
					}
				}
			});
		});
		$('.row2').on('click',function(){
			myArray = new Array();//清空全局数组
			$.ajax({
				type: 'POST',
				url:getRootPath() +'/Indez/getHouse.do',
				data:{'type':$('.bigtype2').val()},//ajax刷新
				dataType: 'json',
				success: function(data){
					var result = '';
					if(data.status=='false'){
						$('.lists'+$('.bigtype2').val()).empty();
						$('.lists'+$('.bigtype2').val()).append('<div style="height:300px">暂无数据</div>');
					}else{
						for(var i = 0; i < data.length; i++){
							result +=   '<a href="'+getRootPath() +'/House/housedetail.do?id='+data[i].id+'">'
							+'<div class="carditems_dt"><img src="'+getRootPath() +data[i].picurl+'" ></div>'
							+'<div class="carditems_dd">'
							+'<h3>'
							+'<span class="h3">'+data[i].title+'</span>'
							+'<span class="ad_deposit">'
							+'<em style="'+data[i].trusstyle+'">托管</em></span>'
							+'</h3>'
							+'<h4>'
							+'<span class="h4 new_price">'+data[i].area+'m²</span>'
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
							$('.lists'+$('.bigtype2').val()).empty()//清空lists元素下的数据
							$('.lists'+$('.bigtype2').val()).append(result);
						});
					}
				}
			});
			
		});
		$('.row3').on('click',function(){
			myArray = new Array();//清空全局数组
			$.ajax({
				type: 'POST',
				url:getRootPath() +'/Indez/getHouse.do',
				data:{'type':$('.bigtype3').val()},//ajax刷新
				dataType: 'json',
				success: function(data){
					var result = '';
					if(data.status=='false'){
						$('.lists'+$('.bigtype3').val()).empty();
						$('.lists'+$('.bigtype3').val()).append('<div style="height:300px">暂无数据</div>');
					}else{
						for(var i = 0; i < data.length; i++){
							result +=   '<a href="'+getRootPath() +'/House/housedetail.do?id='+data[i].id+'">'
							+'<div class="carditems_dt"><img src="'+getRootPath() +data[i].picurl+'" ></div>'
							+'<div class="carditems_dd">'
							+'<h3>'
							+'<span class="h3">'+data[i].title+'</span>'
							+'<span class="ad_deposit">'
							+'<em style="'+data[i].trusstyle+'">托管</em></span>'
							+'</h3>'
							+'<h4>'
							+'<span class="h4 new_price">'+data[i].area+'m²</span>'
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
							$('.lists'+$('.bigtype3').val()).empty()//清空lists元素下的数据
							$('.lists'+$('.bigtype3').val()).append(result);
						});
					}
				}
			});
			
		});


		
	/**
	 * 根据筛选条件进行数据Ajax动态获取
	 */

	//筛选条件导航样式控制
	$('#sub01').on('click',function(){
		$('.cont_sub01').attr('style',null);
		$('.cont_sub02').attr('style','display:none');
		$('.cont_sub03').attr('style','display:none');
	});
	$('#sub02').on('click',function(){
		$('.cont_sub02').attr('style',null);
		$('.cont_sub01').attr('style','display:none');
		$('.cont_sub03').attr('style','display:none');
	});
	$('#sub03').on('click',function(){
		$('.cont_sub03').attr('style',null);
		$('.cont_sub01').attr('style','display:none');
		$('.cont_sub02').attr('style','display:none');
	});
	$('#sub05').on('click',function(){
		$('.cont_sub05').attr('style',null);
		$('.cont_sub06').attr('style','display:none');
		$('.cont_sub07').attr('style','display:none');
	});
	$('#sub06').on('click',function(){
		$('.cont_sub06').attr('style',null);
		$('.cont_sub05').attr('style','display:none');
		$('.cont_sub07').attr('style','display:none');
	});
	$('#sub07').on('click',function(){
		$('.cont_sub07').attr('style',null);
		$('.cont_sub05').attr('style','display:none');
		$('.cont_sub06').attr('style','display:none');
	});
	$('#sub09').on('click',function(){
		$('.cont_sub09').attr('style',null);
		$('.cont_sub010').attr('style','display:none');
		$('.cont_sub011').attr('style','display:none');
	});
	$('#sub010').on('click',function(){
		$('.cont_sub010').attr('style',null);
		$('.cont_sub09').attr('style','display:none');
		$('.cont_sub011').attr('style','display:none');
	});
	$('#sub011').on('click',function(){
		$('.cont_sub011').attr('style',null);
		$('.cont_sub09').attr('style','display:none');
		$('.cont_sub010').attr('style','display:none');
	});

	//条件筛选Ajax无刷新数据更新
	$('.cont1').find('a').on('click',function(){
		var data_id = $(this).attr('data-id');
		var data_key = $(this).attr('data-key');
		var data_name = $(this).html();
		$('#'+data_id).find('span').html(data_name);
		$('#'+data_id).find('span').attr('data-key',data_key);
		$('.cont_sub01').attr('style','display:none');
		$('.cont_sub02').attr('style','display:none');
		$('.cont_sub03').attr('style','display:none');
		var key1 = $('#sub01').find('span').attr('data-key');
		var key2 = $('#sub02').find('span').attr('data-key');
		var key3 = $('#sub03').find('span').attr('data-key');
		myArray[0] = key1?key1:0;//若其值为空，则返回0
		myArray[1] = key2?key2:0;
		myArray[2] = key3?key3:0;
		ajax_select(myArray,1,"zz");
	});
	$('.cont2').find('a').on('click',function(){
		var data_id = $(this).attr('data-id');
		var data_key = $(this).attr('data-key');
		var data_name = $(this).html();
		$('#'+data_id).find('span').html(data_name);
		$('#'+data_id).find('span').attr('data-key',data_key);
		$('.cont_sub05').attr('style','display:none');
		$('.cont_sub06').attr('style','display:none');
		$('.cont_sub07').attr('style','display:none');
		var key5 = $('#sub05').find('span').attr('data-key');
		var key6 = $('#sub06').find('span').attr('data-key');
		var key7 = $('#sub07').find('span').attr('data-key');
		myArray[0] = key5?key5:0;//若其值为空，则返回0
		myArray[1] = key6?key6:0;
		myArray[2] = key7?key7:0;
		ajax_select(myArray,2,"bg");
	});
	$('.cont3').find('a').on('click',function(){
		var data_id = $(this).attr('data-id');
		var data_key = $(this).attr('data-key');
		var data_name = $(this).html();
		$('#'+data_id).find('span').html(data_name);
		$('#'+data_id).find('span').attr('data-key',data_key);
		$('.cont_sub09').attr('style','display:none');
		$('.cont_sub010').attr('style','display:none');
		$('.cont_sub011').attr('style','display:none');
		var key9 = $('#sub09').find('span').attr('data-key');
		var key10 = $('#sub010').find('span').attr('data-key');
		var key11 = $('#sub011').find('span').attr('data-key');
		myArray[0] = key9?key9:0;//若其值为空，则返回0
		myArray[1] = key10?key10:0;
		myArray[2] = key11?key11:0;
		ajax_select(myArray,3,"sp");
	});
	function ajax_select(o,type,tname){
		$.ajax({
			type: 'POST',
			url:getRootPath() +'/Indez/chooseHouse.do',
			data:{'price':o[0],'term':o[2],'aparttype':o[1],'type':type},//ajax刷新
			dataType: 'json',
			success: function(data){
				$('.'+tname+'page').val(Number($('.'+tname+'page').val())+Number(1));
				var result = '';
				if(data.status=='false'){
					$('.lists'+type).empty();
					$('.lists'+type).append('<div style="height:300px">暂无数据</div>');
				}else{
					for(var i = 0; i < data.length; i++){
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
						$('.lists'+type).empty()//清空lists元素下的数据
						$('.lists'+type).append(result);
					});
				}
			}
		});
	}
	
	
	
	
	/**
	 * 向下滚动刷新Ajax动态获取房源数据
	 */
	//向下滚动Ajax刷新获取数据
	$('.lists1').dropload({
		scrollArea : window,
		loadDownFn : function(me){
			$.ajax({
				type: 'POST',
				url: getRootPath() +'/Indez/moreHouse.do',
				data:{'type':1,'page':$('.zzpage').val()},//ajax刷新
				dataType: 'json',
				success: function(data){
					$('.zzpage').val(Number($('.zzpage').val())+Number(1));
					var result = '';
					for(var i = 0; i < data.length; i++){
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
						$('.lists1').append(result);
						me.resetload();
					});
				},
				error: function(xhr, type){
					alert('Sorry!Ajax error!');
					me.resetload();
				}
			});
		}
	});
	$('.lists2').dropload({
		scrollArea : window,
		loadDownFn : function(me){
			$.ajax({
				type: 'POST',
				url: getRootPath() +'/Indez/moreHouse.do',
				data:{'type':2,'page':$('.bgpage').val()},//ajax刷新
				dataType: 'json',
				success: function(data){
					$('.bgpage').val(Number($('.bgpage').val())+Number(1));
					var result = '';
					for(var i = 0; i < data.length; i++){
						result +=   '<a href="'+getRootPath() +'/House/housedetail.do?id='+data[i].id+'">'
						+'<div class="carditems_dt"><img src="'+getRootPath() +data[i].picurl+'" ></div>'
						+'<div class="carditems_dd">'
						+'<h3>'
						+'<span class="h3">'+data[i].title+'</span>'
						+'<span class="ad_deposit">'
						+'<em style="'+data[i].trusstyle+'">托管</em></span>'
						+'</h3>'
						+'<h4>'
						+'<span class="h4 new_price">'+data[i].area+'m²</span>'
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
						$('.lists2').append(result);
						me.resetload();
					});
				},
				error: function(xhr, type){
					alert('Sorry!Ajax error!');
					me.resetload();
				}
			});
		}
	});
	$('.lists3').dropload({
		scrollArea : window,
		loadDownFn : function(me){
			$.ajax({
				type: 'POST',
				url: getRootPath() +'/Indez/moreHouse.do',
				data:{'type':3,'page':$('.sppage').val()},//ajax刷新
				dataType: 'json',
				success: function(data){
					$('.sppage').val(Number($('.sppage').val())+Number(1));
					var result = '';
					for(var i = 0; i < data.length; i++){
						result +=   '<a href="'+getRootPath() +'/House/housedetail.do?id='+data[i].id+'">'
						+'<div class="carditems_dt"><img src="'+getRootPath() +data[i].picurl+'" ></div>'
						+'<div class="carditems_dd">'
						+'<h3>'
						+'<span class="h3">'+data[i].title+'</span>'
						+'<span class="ad_deposit">'
						+'<em style="'+data[i].trusstyle+'">托管</em></span>'
						+'</h3>'
						+'<h4>'
						+'<span class="h4 new_price">'+data[i].area+'m²</span>'
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
						$('.lists3').append(result);
						me.resetload();
					});
				},
				error: function(xhr, type){
					alert('Sorry!Ajax error!');
					me.resetload();
				}
			});
		}
	});

})