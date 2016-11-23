$(function(){

	$('#filePicker').on('click', function () {
		alert('000');
		wx.chooseImage({
			success: function (res) {
				var localIds = res.localIds;
				syncUpload(localIds);
			}
		});
	});
	var syncUpload = function(localIds){
		var localId = localIds.pop();
		wx.uploadImage({
			localId: localId,
			isShowProgressTips: 1,
			success: function (res) {
				var serverId = res.serverId; // 返回图片的服务器端ID
				//其他对serverId做处理的代码
				if(localIds.length > 0){
					syncUpload(localIds);
				}
				/**
				 * 下载图片到本地服务器
				 */
				wx.downloadImage({
					serverId: serverId, // 需要下载的图片的服务器端ID，由uploadImage接口获得
					isShowProgressTips: 1, // 默认为1，显示进度提示
					success: function (res) {
						var localId = res.localId; // 返回图片下载后的本地ID
					}
				});
			}
		});
	};
})