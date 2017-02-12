

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<link href="css.css" rel="stylesheet">

<title>Knygos aprašymas</title>
<body>
<div class="container ">
	<div class="panel panel-default">
		<div class="container">
			<img src="https://unsplash.it/200/200/?random">	
				<?php
				$conn = mysqli_connect("localhost", "root", "", "NFQ");
				if (!$conn) {
					die("Connection failed: " . mysqli_connect_error());
				}

				$sql = "SELECT * FROM books WHERE id='".$_GET['id']."'";
				$result = mysqli_query($conn, $sql);
				if (mysqli_num_rows($result) > 0) {
					while($row = mysqli_fetch_assoc($result)){
						echo "<h1>". $row["pavadinimas"] . "</h1><br>" . $row["autorius"] .", " . $row["zanras"] .", " .$row["leidimo_metai"];
					}
				}

				// vadidate id
			   	if (is_numeric($_GET['id'])) {
			        echo "ok", PHP_EOL;
			    } else {
			        die;
			    }
					
				$conn->close();
				?>
				<br>
			<a class="btn btn-outline btn-xl" href="index.php"  method="post">Knygu sarasas</a>
		</div>	
	</div>
</div>
</body>