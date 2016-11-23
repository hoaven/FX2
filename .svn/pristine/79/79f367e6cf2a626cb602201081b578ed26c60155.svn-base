<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 密码修改 -->
<div class="modal fade" id="updatepass" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">修改密码</h4>
			</div>
			<div class="modal-body">
				<form
					action="${pageContext.request.contextPath }/manage/uppassword.do"
					method="post">
					<input type="hidden" name="manageId" id="manageId"
						value="${manage.id }" />
					<table class="table table-bordered">
						<tr>
							<td>旧密码：</td>
							<td><input type="password" name="password1" id="password1"
								size="30" /></td>
						</tr>
						<tr>
							<td>新密码：</td>
							<td><input type="password" name="password2" id="password2"
								size="30" /></td>
						</tr>
						<tr>
							<td>确认密码：</td>
							<td><input type="password" name="password3" id="password3"
								size="30" /></td>
						</tr>
					</table>
				</form>
			</div>
			<div class="modal-footer">
				<button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
				<button type="button" onclick="updatepassword()"
					class="btn btn-primary">修改</button>
			</div>
		</div>
	</div>
</div>
