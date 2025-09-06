<?php
// user levels
if (!defined("ewAllowAdd")) define("ewAllowAdd", 1, true);
if (!defined("ewAllowDelete")) define("ewAllowDelete", 2, true);
if (!defined("ewAllowEdit")) define("ewAllowEdit", 4, true);
if (!defined("ewAllowView")) define("ewAllowView", 8, true);
if (!defined("ewAllowList")) define("ewAllowList", 8, true);
if (defined("ewAllowSearch")) define("ewAllowSearch", 8, true);
if (!defined("ewAllowAdmin")) define("ewAllowAdmin", 16, true);

switch ($_SERVER['SERVER_NAME']) {
	case "corvinus.rod":
		$config["siteName"]= "corvinus";
		break;
	case "elfekvo.rod":
		$config["siteName"]= "elfekvo";
		break;
	case "mysys.rod":
	case "mysys.site":
		$config["siteName"]= "mysys";
		break;
	case "zbads.rod":
		$config["siteName"]= "zbads";
		break;
	case "vir2.rod":
		$config["siteName"]= "vir2";
		break;
	default:
		$config["siteName"]= "mysys";
		break;
}

include ($config["systemROOT"]."admin/config/".$config["siteName"]."/".$config["siteName"].".inc.php");

$config["configShare"]["serverName"] = $config["siteName"];
$config["configShare"]["whichSystem"] = $config["siteName"];
/*
$config["configShare"]["serverAddress"] = $_SERVER["SERVER_ADDR"];
$config["configShare"]["serverHost"] = $_SERVER["REMOTE_NAME"];
$config["configShare"]["remoteAddress"] = $_SERVER["REMOTE_ADDR"];
$config["configShare"]["remoteHost"] = $_SERVER["REMOTE_HOST"];
*/
$config["configShare"]["registrationModul"] = "index.php?modulSelect=core_users&modulAction=registration";
$config["configShare"]["whichSystemMode"] = "admin";
$config["configShare"]["adminPath"] = "admin/";
$config["configShare"]["adminModulsPath"] = "admin/inc/";
$config["configShare"]["tplPath"] = "tpl/".$config["siteName"]."/";
$config["configShare"]["cfgPath"] = "cfg/".$config["siteName"]."/";
$config["configShare"]["incPath"] = "inc/".$config["siteName"]."/";
$config["configShare"]["configPath"] = "config/".$config["siteName"]."/";

$config["configShare"]["normalImgPath"] = "/admin/img/";
$config["configShare"]["imagePath"] = "img/";
$config["configShare"]["cssFileName"] = "css/admin.css";
$config["configShare"]["cssFileNameIE"] = "css/adminie.css";
$config["configShare"]["imageButton"] = "img/button/";
$config["configShare"]["themeStart"] = "olive";
$config["configShare"]["textWraplen"] = "100";
$config["configShare"]["adminLogo"] = "adminlogo.png";
$config["configShare"]["guestUser"] = "Guest";
$config["configShare"]["developerHome"] = "http://rodnas.fw.hu";
$config["configShare"]["docrootPath"] = "../docroot/";
$config["configShare"]["docrootPathHide"] = "../docroot/";
$config["configShare"]["sharePath"] = "share/";
$config["configShare"]["shareModulsPath"] = "share/inc/";
$config["configShare"]["modulFramePath"] = "share/modul/";
$config["configShare"]["modulFrameFile"] = "frame.inc.php";
$config["configShare"]["modulFrameName"] = "modulFrame";
$config["configShare"]["shareLibPath"] = "share/lib/";
$config["configShare"]["adminMail"] = "rodnas@uw.hu";
$config["configShare"]["siteLogo"] = "";
$config["configShare"]["developLogo"] = "developby.png";
$config["configShare"]["registrationUserLevel"] = "4";
$config["configShare"]["onlyView"] = "0";
$config["configShare"]["descriptionSign"] = "/#/";
$config["configShare"]["displayRecs"] = "5";
$config["configShare"]["recRange"] = "5";
$config["configShare"]["noView"] = "0";
$config["configShare"]["nocopy"] = "0";
$config["configShare"]["noEdit"] = "0";
$config["configShare"]["noAdd"] = "0";
$config["configShare"]["noDelete"] = "0";
$config["configShare"]["addButton"] = "plus.png";
$config["configShare"]["copyButton"] = "copy.png";
$config["configShare"]["editButton"] = "edit.png";
$config["configShare"]["deleteButton"] = "delete.png";
$config["configShare"]["adminButton"] = "admin.png";
$config["configShare"]["viewButton"] = "view.png";
$config["configShare"]["viewButtonNew"] = "viewnew.png";
$config["configShare"]["firstButton"] = "first.png";
$config["configShare"]["prevButton"] = "backward.png";
$config["configShare"]["prevItemButton"] = "backwardplay.png";
$config["configShare"]["nextButton"] = "forward.png";
$config["configShare"]["nextItemButton"] = "forwardplay.png";
$config["configShare"]["lastButton"] = "last.png";
$config["configShare"]["backButton"] = "back.png";
$config["configShare"]["openButton"] = "open.png";
$config["configShare"]["closeButton"] = "close.png";
$config["configShare"]["activeButton"] = "active.png";
$config["configShare"]["configsButton"] = "config.png";
$config["configShare"]["downloadURLButton"] = "download.png";
$config["configShare"]["noButton"] = "nobutton.png";
$config["configShare"]["treeBgColor"] = "#e1e0cc";
$config["configShare"]["logoWidth"] = "150";
$config["configShare"]["logoHeight"] = "150";
$config["configShare"]["pictSmallWidth"] = "120";
$config["configShare"]["pictSmallHeight"] = "120";
$config["configShare"]["pictSmallNamePlus"] = "_small";
$config["configShare"]["pictNormalWidth"] = "600";
$config["configShare"]["pictNormalHeight"] = "600";
$config["configShare"]["pictNormalNamePlus"] = "_normal";
$config["configShare"]["pictLargeWidth"] = "1280";
$config["configShare"]["pictLargeHeight"] = "1024";
$config["configShare"]["pictLargeNamePlus"] = "_large";
$config["configShare"]["leftWidthAdmin"] = "260";
$config["configShare"]["leftWidthUser"] = "200";
$config["configShare"]["listType"] = "normal";
$config["configShare"]["debugPrintValue"] = "0";
$config["configShare"]["noNavigationDefault"] = "0";
$config["configShare"]["awayButton"] = "away.png";
$config["configShare"]["bottomMenuSeparator"] = " - ";
$config["configShare"]["virBoxRefresh"] = "30";
$config["configShare"]["searchFilterNum"] = "=,<>,<,<=,>,>=,is null,is not null";
$config["configShare"]["searchFilterNumFin"] = "=,<>,<,<=,>,>=,is null,is not null,between";
$config["configShare"]["layoutMainHTML"] = "layoutsetup";
$config["configShare"]["layoutNoContent"] = "health,admin"; 

/*
name<=>video<#>
mainTable<=>video<#>
modulBase<=>modulframe<#>
imgPath<=>video/<#>
viewDescription<=>0<#>
isNewItemCount<=>0<#>
noCopy<=>0<#>
listForm<=>listForm2Box<#>
defaultOrder<=>insertWhen<#>
defaultOrderType<=>DESC<#>
displayRecs<=>20<#>
recRange<=>20<#>
*/

?>