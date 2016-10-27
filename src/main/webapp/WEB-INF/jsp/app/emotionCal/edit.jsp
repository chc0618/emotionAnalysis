<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/common/common.jspf"%>
<script type="text/javascript" src="${ctx}/js/app/emotionCal/edit.js"></script>

<style type="text/css">
.col-sm-3 {
	width: 15%;
	float: left;
}

.col-sm-9 {
	width: 85%;
	float: left;
}
</style>
</head>
<body>
	<div class="l_err" style="width: 100%; margin-top: 2px;"></div>
	<form id="form" name="form" class="form-horizontal" method="post"
		action="${ctx}/emotionCal/editLexEntity.shtml">
		<input type="hidden" class="form-control checkacc"
			value="${lex.id}" name="lexFormMap.id" id="id">
		<section class="panel panel-default">
		<div class="panel-body">
			<div class="form-group">
				<div class="col-sm-3">
					<label class="control-label">词语</label>
				</div>
				<div class="col-sm-9">
					<input type="text" class="form-control"
						placeholder="请输入情感词" name="lexFormMap.name" id="name">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
						<div class="form-group">
				<div class="col-sm-3">
					<label class="control-label">词性种类</label>
				</div>
				<div class="col-sm-9">
					<input type="text" class="form-control"
						placeholder="词性种类" name="lexFormMap.zhonglei" id="zhonglei">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
						<div class="form-group">
				<div class="col-sm-3">
					<label class="control-label">词义数</label>
				</div>
				<div class="col-sm-9">
					<input type="text" class="form-control"
						placeholder="词义数" name="lexFormMap.ciyishu" id="ciyishu">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
						<div class="form-group">
				<div class="col-sm-3">
					<label class="control-label">词义序号</label>
				</div>
				<div class="col-sm-9">
					<input type="text" class="form-control"
						placeholder="词义序号" name="lexFormMap.ciyixuhao" id="ciyixuhao">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
						<div class="form-group">
				<div class="col-sm-3">
					<label class="control-label">情感分类</label>
				</div>
				<div class="col-sm-9">
					<input type="text" class="form-control"
						placeholder="情感分类" name="lexFormMap.qingganfenlei" id="qingganfenlei">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
						<div class="form-group">
				<div class="col-sm-3">
					<label class="control-label">强度</label>
				</div>
				<div class="col-sm-9">
					<input type="text" class="form-control"
						placeholder="请输入强度" name="lexFormMap.qiangdu" id="qiangdu">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
						<div class="form-group">
				<div class="col-sm-3">
					<label class="control-label">极性</label>
				</div>
				<div class="col-sm-9">
					<input type="text" class="form-control"
						placeholder="请输入极性" name="lexFormMap.jixing" id="jixing">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
						<div class="form-group">
				<div class="col-sm-3">
					<label class="control-label">辅助情感分类</label>
				</div>
				<div class="col-sm-9">
					<input type="text" class="form-control"
						placeholder="请输入辅助情感分类" name="lexFormMap.fuzhuqingganfenlei" id="fuzhuqingganfenlei">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
						<div class="form-group">
				<div class="col-sm-3">
					<label class="control-label">强度1</label>
				</div>
				<div class="col-sm-9">
					<input type="text" class="form-control"
						placeholder="请输入强度1" name="lexFormMap.qiangdu1" id="qiangdu1">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
						<div class="form-group">
				<div class="col-sm-3">
					<label class="control-label">极性</label>
				</div>
				<div class="col-sm-9">
					<input type="text" class="form-control"
						placeholder="请输入极性" name="lexFormMap.jixing1" id="jixing1">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
						<div class="form-group">
				<div class="col-sm-3">
					<label class="control-label">K</label>
				</div>
				<div class="col-sm-9">
					<input type="text" class="form-control"
						placeholder="请输入K" name="lexFormMap.K" id="K">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
						<div class="line line-dashed line-lg pull-in"></div>
						<div class="form-group">
				<div class="col-sm-3">
					<label class="control-label">L</label>
				</div>
				<div class="col-sm-9">
					<input type="text" class="form-control"
						placeholder="请输入L" name="lexFormMap.L" id="L">
				</div>
			</div>
		</div>
		<footer class="panel-footer text-right bg-light lter">
		<button type="submit" class="btn btn-success btn-s-xs">保存</button>
		</footer> </section>
	</form>
	<script type="text/javascript">
	onloadurl();
</script>
</body>
</html>