<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- admin/student/home -->
<table id="student_list"></table>
<div id="pager"></div>
<script>
$(function() {
	$("#student_list").jqGrid({
		url:'/admin/student/getList',
		datatype: "json",
		height : 300,
		width : 900,
		colNames:['아이디','이름', '전화번호', '이메일','주소','성별','가입일'],
		colModel:[
			{name:'user_id', align:"center", width:90, key : true},
			{name:'user_name', align:"center"},
			{name:'user_phone', align:"center"},		
			{name:'user_email', align:"center"},		
			{name:'user_address', width:90},
			{name:'user_gender', align:"center", width:90},
			{name:'user_join', align:"center", width:90},
		],
		rowNum:10,
		rowList:[10,20,30],
		pager: '#pager',
		/*onPaging : function(pgButton) {
			console.log(pgButton);
			//setTimeout(function () {
			$.ajax({
				url: '/admin/student/list',
				method: 'get',
				success: function (result) {
					// 받아온 데이터 확인
					console.log(result);
					//let rowNum = $("#fileDataCollectJqGrid").getGridParam('rowNum');
					//let currentPage = $("#fileDataCollectJqGrid").getGridParam('page');
					//let lastPage = $("#fileDataCollectJqGrid").getGridParam('lastpage');
					//let totalrows = $("#fileDataCollectJqGrid").getGridParam('totalrows');
					//console.log(" rowNum : " + rowNum + " currentPage : " + currentPage + " lastPage : " + lastPage + " totalrows : " + totalrows );
	
					$("#student_list").jqGrid('clearGridData');
					
					let jsonReader = $("#student_list").jqGrid('getGridParam', 'jsonReader');
					console.log(jsonReader);
					
					jsonReader.total = 999;
					console.log($("#student_list").jqGrid('getGridParam', 'jsonReader'));
					
					$("#student_list").jqGrid("setGridParam", {
						datatype: "local",
						data: result.rows,
						lastpage: result.total,
						records: result.records,
					});
					$("#student_list").trigger('reloadGrid');
				}
			});
			//}, 0)
		},*/
		viewrecords: true,
		sortorder: "desc",
		caption:"학생 리스트",
		onCellSelect : function(rowid, iCol){
			console.log(rowid + " : " + iCol);
			console.log($('#jqGrid').jqGrid('getRowData', rowid));
		},
		cellEdit : true,
		cellsubmit:'remote',
		cellurl:'/admin/student/update'
	});
	
	// pagination
	$("#student_list").jqGrid('navGrid','#pager',{edit:false,add:false,del:false});
	
	// 행 검색
	$("#search_student_list").click(function(){
		$("#student_list").jqGrid('searchGrid', {sopt:['cn','bw','eq','ne','lt','gt','ew']}
		);
	});
	
	// 행 추가
	$("#add_student_list").click(function(){
		$("#student_list").jqGrid('editGridRow',"new",{height:280,reloadAfterSubmit:true});
	});
	
});
</script>