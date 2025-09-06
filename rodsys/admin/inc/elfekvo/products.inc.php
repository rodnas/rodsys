<?php
if ($config["modulAction"] == "list") {$viewItem['products_x_insertWhen']=0;}
$viewItem[$config["modulSelect"]."_x_products_statusID"]=1;
$viewItem[$config["modulSelect"]."_x_firmID"]=1;
$viewItem[$config["modulSelect"]."_x_descriptionPrivate"]=0;
if ($_SESSION[$config["configShare"]["whichSystemAndMode"]."status_UserLevel"] == 2 ||
	$_SESSION[$config["configShare"]["whichSystemAndMode"]."status_UserLevel"] == 3) {
	$viewItem[$config["modulSelect"]."_x_descriptionPrivate"]=1;
} else if (($_SESSION[$config["configShare"]["whichSystemAndMode"]."status_UserLevel"] == 4 ||
	$_SESSION[$config["configShare"]["whichSystemAndMode"]."status_UserLevel"] == 5) &&
	($config[$config["modulSelect"]]["resultRow"]["insertUserID"]==$_SESSION[$config["configShare"]["whichSystemAndMode"] . "status_UserID"])) {
	$viewItem[$config["modulSelect"]."_x_descriptionPrivate"]=1;
}

if ($_SESSION[$config["configShare"]["whichSystemAndMode"]."status_UserLevel"] == 1) {
	$viewItem[$config["modulSelect"]."_x_storageWhere"]=0;
	$viewItem[$config["modulSelect"]."_x_updateWhen"]=0;
	$viewItem[$config["modulSelect"]."_x_price"]=0;
	$viewItem[$config["modulSelect"]."_x_insertUserID"]=0;
	$viewItem[$config["modulSelect"]."_x_own"]=0;
}
if ($_SESSION[$config["configShare"]["whichSystemAndMode"]."status_UserLevel"] == 5) {
	$viewItem[$config["modulSelect"]."_x_insertUserID"]=0;
}
if (isset($_POST["s_products_statusID"])) {
	if (!empty($_POST["s_products_statusID"])) {$viewItem[$config["modulSelect"]."_x_products_statusID"]=0;}
	else {$viewItem[$config["modulSelect"]."_x_products_statusID"]=1;}
}
else if (isset($_SESSION[$config["modulSelect"]."_s_products_statusID"]) && !empty($_SESSION[$config["modulSelect"]."_s_products_statusID"])) {
//	$viewItem[$config["modulSelect"]."_x_products_statusID"]=0;
}

function productFieldsList($viewItem,$config,$itemValues) {
	$viewItem['products_x_insertWhen']=0;
	$viewItem[$config["modulSelect"]."_x_products_statusID"]=1;
	$viewItem[$config["modulSelect"]."_x_firmID"]=1;
	$viewItem[$config["modulSelect"]."_x_descriptionPrivate"]=0;
	if ($_SESSION[$config["configShare"]["whichSystemAndMode"]."status_UserLevel"] == 2 ||
		$_SESSION[$config["configShare"]["whichSystemAndMode"]."status_UserLevel"] == 3) {
		$viewItem[$config["modulSelect"]."_x_descriptionPrivate"]=1;
	} else if (($_SESSION[$config["configShare"]["whichSystemAndMode"]."status_UserLevel"] == 4 ||
		$_SESSION[$config["configShare"]["whichSystemAndMode"]."status_UserLevel"] == 5) &&
		($itemValues["insertUserID"]==$_SESSION[$config["configShare"]["whichSystemAndMode"] . "status_UserID"])) {
		$viewItem[$config["modulSelect"]."_x_descriptionPrivate"]=1;
	}
	
	if (isset($_POST["s_products_statusID"])) {
		if (!empty($_POST["s_products_statusID"])) {$viewItem[$config["modulSelect"]."_x_products_statusID"]=0;}
		else {$viewItem[$config["modulSelect"]."_x_products_statusID"]=1;}
	}
	else if (isset($_SESSION[$config["modulSelect"]."_s_products_statusID"]) && !empty($_SESSION[$config["modulSelect"]."_s_products_statusID"])) {
//		$viewItem[$config["modulSelect"]."_x_products_statusID"]=0;
	}
	return $viewItem;
}	

function productFieldsView($viewItem,$config,$itemValues) {
	$viewItem[$config["modulSelect"]."_x_products_statusID"]=1;
	$viewItem[$config["modulSelect"]."_x_firmID"]=1;
	$viewItem[$config["modulSelect"]."_x_descriptionPrivate"]=0;
	$viewItem[$config["modulSelect"]."_x_storageWhere"]=0;
	$viewItem[$config["modulSelect"]."_x_updateWhen"]=1;
	$viewItem[$config["modulSelect"]."_x_price"]=0;
	if ($_SESSION[$config["configShare"]["whichSystemAndMode"]."status_UserLevel"] == 2 ||
		$_SESSION[$config["configShare"]["whichSystemAndMode"]."status_UserLevel"] == 3) {
		$viewItem[$config["modulSelect"]."_x_descriptionPrivate"]=1;
		$viewItem[$config["modulSelect"]."_x_storageWhere"]=1;
		$viewItem[$config["modulSelect"]."_x_price"]=1;
	} else if ($_SESSION[$config["configShare"]["whichSystemAndMode"]."status_UserLevel"] == 4) {
		if ($itemValues["insertUserID"]==$_SESSION[$config["configShare"]["whichSystemAndMode"] . "status_UserID"]) {
			$viewItem[$config["modulSelect"]."_x_descriptionPrivate"]=1;
			$viewItem[$config["modulSelect"]."_x_storageWhere"]=1;
			$viewItem[$config["modulSelect"]."_x_price"]=1;
		}
	} else if ($_SESSION[$config["configShare"]["whichSystemAndMode"]."status_UserLevel"] == 5) {
		if ($itemValues["insertUserID"]==$_SESSION[$config["configShare"]["whichSystemAndMode"] . "status_UserID"]) {
			$viewItem[$config["modulSelect"]."_x_descriptionPrivate"]=1;
			$viewItem[$config["modulSelect"]."_x_storageWhere"]=1;
			$viewItem[$config["modulSelect"]."_x_price"]=1;
		} else {
			$viewItem[$config["modulSelect"]."_x_price"]=0;
		}
	}
	if ($_SESSION[$config["configShare"]["whichSystemAndMode"]."status_UserLevel"] == 1) {
		$viewItem[$config["modulSelect"]."_x_storageWhere"]=0;
		$viewItem[$config["modulSelect"]."_x_updateWhen"]=1;
		$viewItem[$config["modulSelect"]."_x_price"]=0;
	}
	if (isset($_POST["s_products_statusID"])) 		{
		if (!empty($_POST["s_products_statusID"])) {$viewItem[$config["modulSelect"]."_x_products_statusID"]=0;}
		else {$viewItem[$config["modulSelect"]."_x_products_statusID"]=1;}
	}
	else if (isset($_SESSION[$config["modulSelect"]."_s_products_statusID"]) && !empty($_SESSION[$config["modulSelect"]."_s_products_statusID"])) {
//		$viewItem[$config["modulSelect"]."_x_products_statusID"]=0;
	}
	return $viewItem;
}
?>