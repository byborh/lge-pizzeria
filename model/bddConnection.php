<?php

function bddConnection($unDsn, $unLogin, $unMdp) {
    try {
        $connection = new PDO($unDsn, $unLogin, $unMdp);
        return $connection;
    } catch (PDOException $err) {
        die("erreur ! : " . $err->getMessage());
    }
}

// Récupérer depuis la bdd des données !
function lesCategories($UneConnection) {
    $sql = "select * from categorie";
    $res = $UneConnection->query($sql);
    return $res->fetchAll(PDO::FETCH_ASSOC);
}

function lesPizzasCategorie($UneConnection, $uneCategorie) {
    $sql = "select numPizza, nomPizza from pizza where codeCategorie= '" . $uneCategorie ."'";
    $res = $UneConnection->query($sql);
    return $res->fetchAll(PDO::FETCH_ASSOC);
}

function lesIngredients($UneConnection, $unePizza) {
    $sql = "

    SELECT ingredient.numIngredient, ingredient.libelleIngredient
    FROM ingredient
    INNER JOIN composer ON ingredient.numIngredient = composer.numIngredient
    WHERE numPizza = '" . $unePizza ."';

    
    ";
    $res = $UneConnection->query($sql);
    return $res->fetchAll(PDO::FETCH_ASSOC);
}

function lesPrix($UneConnection, $unePizza) {
    $sql = "
    SELECT prix.prix, taille.taille
    FROM prix
    INNER JOIN taille ON prix.taille = taille.taille
    WHERE numPizza = " . $unePizza;

    $res = $UneConnection->query($sql);
    return $res->fetchAll(PDO::FETCH_ASSOC);
}