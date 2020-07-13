<?php
if (isset($_GET['recherche'])) {
    $resrech = $_GET['recherche'];
}

$bdd = new PDO('mysql:host=localhost;dbname=autocompletion;charset=UTF8', "root", "");

$sql="SELECT id, nom, prenom, poste, age, statut, ancienclub, img FROM effectif WHERE nom LIKE '$resrech%' OR prenom LIKE '$resrech%'";
$result = $bdd->query($sql)->fetchAll(PDO::FETCH_ASSOC);
?>

<table>
    <!-- td de fermeture -->
    <td class="on"></td>
    <?php
    foreach ($result as $data) {


         echo '</br><a href="element.php?id='.$data['id'].'&statut='.$data['statut'].'&prenom='.$data['prenom'].'&nom='.$data['nom'].'&age='.$data['age'].'&aclub='.$data['ancienclub'].'&poste='.$data['poste'].'&img='.$data['img'].'">'.$data['prenom'].' '.$data['nom'].'</a>';
    }
    ?>
</table>