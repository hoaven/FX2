  $(function(){
        $('#sub01').on('click',function(){
            $('.cont_sub01').attr('style',null);
            $('.cont_sub02').attr('style','display:none');
            $('.cont_sub03').attr('style','display:none');
            $('.cont_sub04').attr('style','display:none');
        });
        $('#sub02').on('click',function(){
            $('.cont_sub02').attr('style',null);
            $('.cont_sub01').attr('style','display:none');
            $('.cont_sub03').attr('style','display:none');
            $('.cont_sub04').attr('style','display:none');

        });
        $('#sub03').on('click',function(){
            $('.cont_sub03').attr('style',null);
            $('.cont_sub01').attr('style','display:none');
            $('.cont_sub02').attr('style','display:none');
            $('.cont_sub04').attr('style','display:none');
        });
        $('#sub04').on('click',function(){
            $('.cont_sub04').attr('style',null);
            $('.cont_sub01').attr('style','display:none');
            $('.cont_sub02').attr('style','display:none');
            $('.cont_sub03').attr('style','display:none');
        });
        $('#sub05').on('click',function(){
            $('.cont_sub05').attr('style',null);
            $('.cont_sub06').attr('style','display:none');
            $('.cont_sub07').attr('style','display:none');
            $('.cont_sub08').attr('style','display:none');
        });
        $('#sub06').on('click',function(){
            $('.cont_sub06').attr('style',null);
            $('.cont_sub05').attr('style','display:none');
            $('.cont_sub07').attr('style','display:none');
            $('.cont_sub08').attr('style','display:none');
        });
        $('#sub07').on('click',function(){
            $('.cont_sub07').attr('style',null);
            $('.cont_sub05').attr('style','display:none');
            $('.cont_sub06').attr('style','display:none');
            $('.cont_sub08').attr('style','display:none');
        });
        $('#sub08').on('click',function(){
            $('.cont_sub08').attr('style',null);
            $('.cont_sub05').attr('style','display:none');
            $('.cont_sub06').attr('style','display:none');
            $('.cont_sub07').attr('style','display:none');
        });
        $('#sub09').on('click',function(){
            $('.cont_sub09').attr('style',null);
            $('.cont_sub010').attr('style','display:none');
            $('.cont_sub011').attr('style','display:none');
            $('.cont_sub012').attr('style','display:none');
        });
        $('#sub010').on('click',function(){
            $('.cont_sub010').attr('style',null);
            $('.cont_sub09').attr('style','display:none');
            $('.cont_sub011').attr('style','display:none');
            $('.cont_sub012').attr('style','display:none');
        });
        $('#sub011').on('click',function(){
            $('.cont_sub011').attr('style',null);
            $('.cont_sub09').attr('style','display:none');
            $('.cont_sub010').attr('style','display:none');
            $('.cont_sub012').attr('style','display:none');
        });
        $('#sub012').on('click',function(){
            $('.cont_sub012').attr('style',null);
            $('.cont_sub09').attr('style','display:none');
            $('.cont_sub010').attr('style','display:none');
            $('.cont_sub011').attr('style','display:none');
        });

        $('.cont').find('a').on('click',function(){
            var data_id = $(this).attr('data-id');
            var data_key = $(this).attr('data-key');
            var data_name = $(this).html();

            $('#'+data_id).find('span').html(data_name);
            $('#'+data_id).find('span').attr('data-key',data_key);
            $('.cont_sub01').attr('style','display:none');
            $('.cont_sub02').attr('style','display:none');
            $('.cont_sub03').attr('style','display:none');
            $('.cont_sub04').attr('style','display:none');
            $('.cont_sub05').attr('style','display:none');
            $('.cont_sub06').attr('style','display:none');
            $('.cont_sub07').attr('style','display:none');
            $('.cont_sub08').attr('style','display:none');
            $('.cont_sub09').attr('style','display:none');
            $('.cont_sub010').attr('style','display:none');
            $('.cont_sub011').attr('style','display:none');
            $('.cont_sub012').attr('style','display:none');
            var key1 = $('#sub01').find('span').attr('data-key');
            var key2 = $('#sub02').find('span').attr('data-key');
            var key3 = $('#sub03').find('span').attr('data-key');
            var key4 = $('#sub04').find('span').attr('data-key');
            var key5 = $('#sub05').find('span').attr('data-key');
            var key6 = $('#sub06').find('span').attr('data-key');
            var key7 = $('#sub07').find('span').attr('data-key');
            var key8 = $('#sub08').find('span').attr('data-key');
            var key9 = $('#sub09').find('span').attr('data-key');
            var key10 = $('#sub010').find('span').attr('data-key');
            var key11 = $('#sub011').find('span').attr('data-key');
            var key12 = $('#sub012').find('span').attr('data-key');
            var myArray = new Array();
            myArray[0] = key1?key1:0;
            myArray[1] = key2?key2:0;
            myArray[2] = key3?key3:0;
            myArray[3] = key3?key3:0;
            myArray[4] = key3?key3:0;
            myArray[5] = key3?key3:0;
            myArray[6] = key3?key3:0;
            myArray[7] = key3?key3:0;
            myArray[8] = key3?key3:0;
            myArray[9] = key3?key3:0;
            myArray[10] = key3?key3:0;
            myArray[11] = key3?key3:0;
            ajax_select(myArray);
        })
/*        function ajax_select(o){
            $.ajax({
                type: 'POST',
                url: '{:U("Home/index/ajax_select")}',
                data:{'price':o[0],'address':o[1],'apartment_type':o[2],'type':1},
                dataType: 'json',
                success: function(data){
                    var result = '';
                    if(data.status=='false'){
                        $('.lists').empty()
                        $('.lists').append('<div style="height:300px">暂无数据</div>');
                    }else{
                        for(var i = 0; i < data.lists.length; i++){
                            if(data.lists[i].check_in_date){data_check=data.lists[i].check_in_date}else{data_check='随时'}
                            result +=   '<a href="{:U("Home/index/detail",array("id" =>'+data.lists[i].id+'))}">'
                            +'<div class="carditems_dt"><img src="__RT__/renthouse/images/list_img.jpg" ></div>'
                            +'<div class="carditems_dd">'
                            +'<h3>'
                            +'<span class="h3">'+data.lists[i].title+'</span>'
                            +'<span class="ad_deposit"><em>托&nbsp;管</em></span>'
                            +'</h3>'
                            +'<h4>'
                            +'<span class="h4 new_price">'+data.lists[i].apartment_type+' |&nbsp;'+data.lists[i].measure+'m²&nbsp;| '+data.lists[i].floor+'层</span>'
                            +'<span class="ad_price" style="font-size: 16px">'+data.lists[i].price+'元/月</span>'
                            +'</h4>'
                            +'<p>'
                            +'<span class="rbox6 bGreen" style="font-size: 12px">'+data_check+'入住</span>'
                            +'<span class="ad_collect">已有 28 人收藏</span>'
                            +'</p>'
                            +'</div>'
                            +'</a>';
                        }
                        // 为了测试，延迟1秒加载
                        setTimeout(function(){
                            $('.lists').empty()
                            $('.lists').append(result);
                        },1000);
                    }
                }
            });*/
        

    })