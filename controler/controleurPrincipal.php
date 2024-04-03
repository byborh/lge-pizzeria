<?php

if(isset($_GET['menuFivePizza'])) {
    if($_GET['menuFivePizza'] == '1') {
        require_once 'controler/controleurAccueil.php';
    } else if ($_GET['menuFivePizza'] == '2') {
        require_once 'controler/controleurCarte.php';
    } else if ($_GET['menuFivePizza'] == '3') {
        require_once 'controler/controleurSituer.php';
    } else if ($_GET['menuFivePizza'] == '4') {
        require_once 'controler/controleurCommander.php';
    } 
} else {
    require_once 'controler/controleurAccueil.php';
}

?>