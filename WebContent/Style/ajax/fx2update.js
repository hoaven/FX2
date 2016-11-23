$(function(){
	var id = document.getElementById("houseid").value;
	switch(id){
	case 1:getSpan1();break;
	case 2:getSpan2();break;
	case 3:getSpan3();break;
	}

	$('.row1').on('click', function () {
		if($('.houseid').val()!=1){
			if(confirm('确定修改房源类型为住宅!?')){
				getSpan1();
				return true;
			}else{
				return false;
			}
		}
	});

	$('.row2').on('click', function () {
		if($('.houseid').val()!=2){
			if(confirm('确定修改房源类型为办公!?')){
				getSpan2();
				return true;
			}else{
				return false;
			}
		}
	});

	$('.row3').on('click', function () {
		if($('.houseid').val()!=3){
			if(confirm('确定修改房源类型为商铺!?')){
				getSpan3();
				return true;
			}else{
				return false;
			}
		}
	});
})