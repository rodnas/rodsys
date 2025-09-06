$(function()
	{
/*
	$("#descriptionToggle" ).hide();
	$("#contentChart" ).hide();
	$("#clickShow" ).hide();
	$("#clickHide").click(function(){
		$("#realList" ).hide();
		$("#contentChart" ).show();
		$("#clickHide" ).hide();
		$("#clickShow" ).show();
	});
	$("#clickShow").click(function(){
		$("#realList" ).show();
		$("#contentChart" ).hide();
//		$("#contentList" ).show();
		$("#clickHide" ).show();
		$("#clickShow" ).hide();
	});
*/
	$("#watchWhen").click(function(){
		var today = new Date();
		var year = today.getFullYear();
		var month = today.getMonth()+1; //January is 0!
		var day = today.getDate();
		var hour = today.getHours();
		var min = today.getMinutes();
		var sec = today.getSeconds();
		if(day<10) { day='0'+day } 
		if(month<10) { month='0'+month; } 
		if(hour<10) { hour='0'+hour; } 
		if(min<10) { min='0'+min; } 
		if(sec<10) { sec='0'+sec; } 
		$("#x_watchWhen").val(year+'.'+month+'.'+day+' '+hour+':'+min+':'+sec);
	});
/*
//	$( "#x_activateWhen" ).datepicker();
//	$( "#x_deactivateWhen" ).datepicker();
	$( "#x_startDate" ).datepicker();
	$( "#x_stopDate" ).datepicker();
	$( "#x_birthDate" ).datepicker();
	$( "#x_loginDate" ).datepicker();
	$( "#x_startWhen" ).datepicker();
	$( "#x_stopWhen" ).datepicker();
*/
});
