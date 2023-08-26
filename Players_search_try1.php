<?php

    $connection = mysqli_connect("localhost","root","");
    $db = mysqli_select_db($connection,'ipl');
    
    $player = $_POST['P_name'];
    $match = $_POST['M_Id'];
    $sql2 = "SELECT Players.P_Id,Players.P_name,Team.Team_Name,Players.Age,Players.P_Role,Players.Country,
            Individual_stats.M_Id, Individual_stats.Runs, Individual_stats.Strike_rate, Individual_stats.Boundaries,
            Individual_stats.Sixes, Individual_stats.Wickets, Individual_stats.Catches, Individual_stats.Runouts, Individual_stats.Economy 
            from
            ((Players INNER JOIN Team ON Players.Team_Id = Team.Team_Id)
            INNER JOIN  Individual_stats ON Players.P_Id = Individual_stats.P_Id) where P_name= '$player' and M_Id = '$match' ";

    $sql2_run = mysqli_query($connection,$sql2);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><?php echo $player ?></title>
    <style>
        ul {
            font-size: 20px;
        }

        th, td {
                font-size: 30px;
        }

        strong {
                font-size: 40px;
        }

    </style>
</head>
<body>
    <?php
        while($rows = mysqli_fetch_assoc($sql2_run))
        {
            $id = $rows['P_Id'];
            $p_name = $rows['P_name'];
            $t_name = $rows['Team_Name'];
            $age = $rows['Age'];
            $role = $rows['P_Role'];
            $country = $rows['Country'];
            $runs = $rows['Runs'];
            $s_r = $rows['Strike_rate'];
            $fours = $rows['Boundaries'];
            $sixes = $rows['Sixes'];
            $wickets = $rows['Wickets'];
            $catches = $rows['Catches'];
            $runouts = $rows['Runouts'];
            $economy = $rows['Economy'];
        }
    ?>
<center><img src="<?php echo $p_name ?>.png">
    <h1><?php echo $p_name ?></h1></center>
    <ul>
      <li><strong>Details</strong>
        <table border="1">
          <tbody>
            <tr>
              <td>Player ID</td><td><?php echo $id ?></td>
            </tr>
            <tr>
              <td>Name</td><td><?php echo $p_name ?></td>
            </tr>
            <tr>
              <td>Team</td><td><?php echo $t_name ?></td>
            </tr>
            <tr>
              <td>Age</td><td><?php echo $age ?></td>
            </tr>
            <tr>
              <td>Role</td><td><?php echo $role ?></td>
            </tr>
            <tr>
              <td>Country</td><td><?php echo $country ?></td>
            </tr>
          </tbody>
        </table>
      </li>
    </ul>

    <ul>
      <li><strong>Performance 🏏🏏</strong>
    <table border="1">
      <thead>
        <th></th>
        <th><?php echo $match ?></th>
      </thead>
      <tbody>
        <tr>
          <td>Runs</td><td><?php echo $runs ?></td>
        </tr>
        <tr>
          <td>S/R</td><td><?php echo $s_r ?></td>
        </tr>
        <tr>
          <td>Boundaries</td><td><?php echo $fours ?></td>
        </tr>
        <tr>
          <td>Sixes</td><td><?php echo $sixes ?></td>
        </tr>
        <tr>
          <td>Wickets</td><td><?php echo $wickets ?></td>
        </tr>
        <tr>
          <td>Catches</td><td><?php echo $catches ?></td>
        </tr>
        <tr>
          <td>Runouts</td><td><?php echo $runouts ?></td>
        </tr>
        <tr>
          <td>Economy</td><td><?php echo $economy ?></td>
        </tr>
      </tbody>
    </table>
    </li>
    </ul>
    
</body>
</html>