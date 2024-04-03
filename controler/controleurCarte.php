<?php
    require_once "model/bdd.php";
    require_once "model/bddConnection.php";


    $maConnection = bddConnection($dsn, $user, $pass); // Se connecteur à la bdd
    $tabCategories = lesCategories($maConnection); // Afficher les catégories

    $carte = "<table>";

    foreach ($tabCategories as $categorie) {
        $carte .= "<tr>";
        $carte .= "<th>Nom Pizza</th>";
        $carte .= "<th>Ingrédients</th>";
        $carte .= "<th>Taille</th>";
        $carte .= "<th>Prix</th>";
        $carte .= "</tr>";

        $carte .= "<tr>";
        $carte .= "<td>";
        $carte .= $categorie['libelleCategorie'];
        $carte .= "</td>";
        $carte .= "</tr>";
    
        $tabPizzasCategorie = lesPizzasCategorie($maConnection, $categorie['codeCategorie']);
        foreach ($tabPizzasCategorie as $pizza) {
            $carte .= "<tr>";
            $carte .= "<td>";
            $carte .= $pizza['nomPizza'];
            $carte .= "</td>";
            

            $carte .= "<td>";
            $tabIngredients = lesIngredients($maConnection, $pizza['numPizza']);
            foreach ($tabIngredients as $ingredient) {
                $carte .= $ingredient['libelleIngredient'];
            }
            $carte .= "</td>";
            

            $tabPrix = lesPrix($maConnection, $pizza['numPizza']);
                foreach ($tabPrix as $prix) {
                    $carte .= "<td>";
                    $carte .= $prix['taille'] . "cm - ";
                    $carte .= "</td>";
                    $carte .= "<td>";
                    $carte .= $prix['prix'] . "€<br>";
                    $carte .= "</td>";
                }
            $carte .= "</td>";
            $carte .= "</tr>";
        }
    }
    

    $carte .= "</table>";

    require_once 'vue/carte.php';