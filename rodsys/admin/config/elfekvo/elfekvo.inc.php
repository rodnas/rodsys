<?php
$config["configShare"]["databaseType"] = "mysql";
$config["configShare"]["languageType"] = "hu";
$config["configShare"]["setNames"]="set names utf8";


switch(strtolower($_SERVER['HTTP_HOST'])) {
	case 'elfekvo.rod':
	case 'elfekvo':
	case 'localhost':
		$config["configShare"]["databaseServer"] = "localhost";
		$config["configShare"]["databaseSelect"] = "elfekvo";
		$config["configShare"]["databaseUser"] = "root";
		$config["configShare"]["databasePassword"] = "";
		break;

	case 'elfekvo.rod:81':
	case 'elfekvo:81':
	case 'localhost:81':
		$config["configShare"]["databaseServer"] = "localhost:3307";
		$config["configShare"]["databaseSelect"] = "elfekvo";
		$config["configShare"]["databaseUser"] = "root";
		$config["configShare"]["databasePassword"] = "";
		break;
	case 'elfekvo:8012':
	case 'elfekvo.rod:8012':
	case 'localhost:8012':
		$config["configShare"]["databaseServer"] = "localhost:3308";
		$config["configShare"]["databaseSelect"] = "elfekvo";
		$config["configShare"]["databaseUser"] = "root";
		$config["configShare"]["databasePassword"] = "";
		break;
	case 'localhost:8100':		// docker php742-mysql5730
		$config["configShare"]["databaseServer"] = "database:3306";
		$config["configShare"]["databaseSelect"] = "elfekvo";
		$config["configShare"]["databaseUser"] = "root";
		$config["configShare"]["databasePassword"] = "tiger";
		break;
	default:
		$config["configShare"]["databaseServer"] = "localhost";
		$config["configShare"]["databaseSelect"] = "elfekvo";
		$config["configShare"]["databaseUser"] = "root";
		$config["configShare"]["databasePassword"] = "";
		break;
}

$config["configShare"]["baseModul"] = "index.php?modulSelect=products&modulAction=list&productscmd=resetall";
$config["configShare"]["homeModul"] = "products";
$config["configShare"]["topMenuItemCFG"] =
	"products<subMenu><#>
	products_status<subMenu><#>
	products_images<subMenu><#>
	admin<subMenu>admin<=>core_users<=>core_userstitle<=>core_groups<=>core_groups_rights<=>core_configs<=>core_config<=>core_language<=>core_themes<#>
	core_support<subMenu>core_support<=>core_support<=>core_support_action<=>core_support_topic<=>core_support_type<=>core_support_status<#>
	core_messagewall<subMenu><#>";
?>