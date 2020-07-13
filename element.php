<?php
$bdd = new PDO('mysql:host=localhost;dbname=autocompletion;charset=UTF8', "root", "");
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
<?php
if($_GET['statut']=="dirigeant")
{ ?>
<link rel="stylesheet" href="style1.css">
<?php
}
else if($_GET['statut']=="joueur")
{?>
    <link rel="stylesheet" href="style2.css">
<?php 
}
?>
</head>
<body>
    <main>
        <div class="img">
            <img src="<?php echo $_GET['img'];?>"width="450px"height="450px">
        </div>
        <div class="info">
                <p><?php echo $_GET['prenom']?> <?php echo $_GET['nom']?></p>
                <p><u>Age:</u> <?php echo $_GET['age']?> ans </p> 
                <p><u>Poste:</u> <?php echo $_GET['poste']?></p>
                <p><u>Ancien Club:</u> <?php echo $_GET['aclub']?></p>
        </div>

    </main>

</body>
</html>

