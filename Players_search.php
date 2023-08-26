<html>
<head>
    <meta charset="utf-8">
    <title>Suryakumar Yadav</title>
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

$connection = mysqli_connect("localhost","root","");
$db = mysqli_select_db($connection,'ipl');

if (isset($_POST['search']))
{
    $player = $_POST['P_name'];
    $sql2 = "SELECT Players.P_Id,Players.P_name,Team.Team_Name,Players.Age,Players.P_Role,Players.Country,
            Individual_stats.M_Id, Individual_stats.Runs, Individual_stats.Strike_rate, Individual_stats.Boundaries,
            Individual_stats.Sixes, Individual_stats.Wickets, Individual_stats.Catches, Individual_stats.Runouts, Individual_stats.Economy 
            from
            ((Players INNER JOIN Team ON Players.Team_Id = Team.Team_Id)
            INNER JOIN  Individual_stats ON Players.P_Id = Individual_stats.P_Id) where P_name= '$player' ";
    
    $sql1 = "select COUNT(*) from  (Select Players.P_Id,Players.P_name,Team.Team_Name,Players.Age,Players.P_Role,Players.Country,
            Individual_stats.M_Id, Individual_stats.Runs, Individual_stats.Strike_rate, Individual_stats.Boundaries,
            Individual_stats.Sixes, Individual_stats.Wickets, Individual_stats.Catches, Individual_stats.Runouts, Individual_stats.Economy 
            from
            ((Players INNER JOIN Team ON Players.Team_Id = Team.Team_Id)
            INNER JOIN  Individual_stats ON Players.P_Id = Individual_stats.P_Id)) AS Player_search where P_name = '$player' ";

    $sql1_run = mysqli_query($connection,$sql1);
    $sql2_run = mysqli_query($connection,$sql2);
    $count = mysqli_fetch_array($sql1_run);


    if ($count['COUNT(*)'] === 2)
    {
        while ($row = mysqli_fetch_array($sql2_run)) {      
                
                
                        echo    '<table border="1">
                                <tbody>
                                    <tr>
                                        <td>Player ID</td><td>' .$row['P_Id']. '</td>
                                    </tr>
                                    <tr>
                                        <td>Name</td><td>' .$row['P_name']. '</td>
                                    </tr>
                                    <tr>
                                        <td>Team</td><td>' .$row['Team_name']. '</td>
                                    </tr>
                                    <tr>
                                        <td>Age</td><td>' .$row['Age']. '</td>
                                    </tr>
                                    <tr>
                                        <td>Role</td><td>' .$row['P_Role']. '</td>
                                    </tr>
                                    <tr>
                                        <td>Country</td><td>' .$row['Country']. '</td>
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
                                <th>Qualifier 1</th>
                                <th>Final</th>
                            </thead>
                        <tbody>
                                <tr>
                                    <td>Runs</td><td>51</td><td>19</td>
                                </tr>
                                <tr>
                                    <td>Boundaries</td><td>6</td><td>1</td>
                                </tr>
                                <tr>
                                    <td>Sixes</td><td>2</td><td>1</td>
                                </tr>
                                <tr>
                                    <td>S/R</td><td>134.21</td><td>95</td>
                                </tr>
                                <tr>
                                    <td>Wickets</td><td>0</td><td>0</td>
                                </tr>
                                <tr>
                                    <td>Catches</td><td>1</td><td>0</td>
                                </tr>
                                <tr>
                                    <td>Runouts</td><td>0</td><td>1</td>
                                </tr>
                                <tr>
                                    <td>Economy</td><td>NIL</td><td>NIL</td>
                                </tr>
                            </tbody>
                        </table>
                        </li>
                        </ul>';

        }
    }

    
}
?>
</body>
</html>

