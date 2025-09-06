<?php
$config["configShare"]["databaseServer"] = "localhost";
$config["configShare"]["databaseUser"] = "root";
$config["configShare"]["databasePassword"] = "";
$config["configShare"]["databaseSelect"] = "vir2_001";
$config["configShare"]["databaseType"] = "mysql";
$config["configShare"]["languageType"] = "hu";
$config["configShare"]["setNames"]="set names utf8";

$config["configShare"]["baseModul"] = "index.php?modulSelect=nocore_reservation&modulAction=list&nocore_reservationcmd=resetall";
$config["configShare"]["homeModul"] = "nocore_reservation";
$config["configShare"]["topMenuItemCFG"] =
	"nocore_reservation<subMenu>nocore_reservation<=>nocore_reservation_type<#>
	nocore_doctor<subMenu>nocore_doctor<=>nocore_patient<=>nocore_doctor_advert<=>nocore_doctor_marquee<=>nocore_doctor_card<=>nocore_doctor_card_type<=>nocore_doctor_order<=>nocore_doctor_order_type<=>nocore_doctor_deputy<#>
	nocore_clinic<subMenu>nocore_clinic<=>nocore_clinic_order<=>nocore_where<=>nocore_status<#>
	core_advert<subMenu>core_advert<=>core_advert_advertiser<=>core_advert_campaign<=>core_advert_group<=>core_advert_source<=>core_advert_zone<=>core_advert_size<=>core_advert_log<#>
	core_support<subMenu>core_support<=>core_support_action<=>core_support_topic<=>core_support_type<=>core_support_status<#>
	core_users<subMenu>core_users<=>core_users_rights<=>core_userstitle<=>core_groups<=>core_groups_rights<#>
	core_messagewall<subMenu><#>
	core_configs<subMenu>core_configs<=>core_config<=>core_language<=>core_marquee<=>core_localserver<=>core_import<=>core_themes<#>"
?>