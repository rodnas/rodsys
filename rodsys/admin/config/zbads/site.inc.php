<?php
$config[$modulSelect]=
[
	"listItemCFG" =>
	[
		"simple<=>order<=>name<=>x_name",
		"simple<=>order<=>sizeWidth<=>x_sizeWidth",
		"simple<=>order<=>sizeHeight<=>x_sizeHeight",
		"insertwhowhen<=>order<=>insertWhen<=>x_insertWhen",
		"active<=>icon<=>active<=>x_active",
		"optionView<=>selectName<=>lang<=>x_langID<=>id<=>name"
	],
	"inputItemsCFG" =>
	[
		"simple<=>x_name<=>62<=>100",
		"simple<=>x_wwwAddress<=>62<=>255",
		"editorText<=>x_description<=>740<=>200",
		"simpleText<=>x_comment<=>115<=>10",
		"optionSelect<=>lang<=>x_langID<=>id<=>name"
	],
	"checkCFG" =>
	[
		"empty<=>x_name<=>name",
		"duplicate<=>x_name<=>name<=>name=;x_name<=>id!=;x_id,name=;x_name"
	],
	"positionCFG" =>
	[
		"x_name<=>case",
		"x_name<=>default"
	],
	"deleteCFG" =>
	[
		"simple<=>site WHERE id="
	],
	"basicSearchCFG" =>
	[
	"name",
	"wwwAddress",
	"description",
	"insertName"
	],
	"relatedTablesCFG" =>
	[
		"core_users.nickname<=>core_users<=>site.insertUserID=core_users.id<=>insertName<=>"
	],
	"javascriptCFG" =>
	[
		"advert",
		"/ui/jquery.ui.core",
		"/ui/jquery.ui.widget",
		"/ui/jquery.ui.datepicker",
		"/ui/jquery.ui.datepicker-hu"
	],
	"cssCFG" =>
	[
		"admin/themes/edgaolive/css/admin.css"
	],
	"listFilterCFG" =>
	[
		"optionSelect<=>core_users<=>s_insertUserID<=>id<=>nickname<=>site<=>150"
	],
];
/*
##popupAddIDDeleteCFG##
##/popupAddIDDeleteCFG##
##itemValuesPlus##
##/itemValuesPlus##
*/
?>