
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

	<script   src="https://code.jquery.com/jquery-3.1.1.slim.min.js"   integrity="sha256-/SIrNqv8h6QGKDuNoLGA4iret+kyesCkHGzVUUV0shc="   crossorigin="anonymous"></script>

	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	<link href="css.css" rel="stylesheet">

<!-- data table -->
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/r/bs-3.3.5/jq-2.1.4,dt-1.10.8/datatables.min.css"/>
	<script type="text/javascript" src="https://cdn.datatables.net/r/bs-3.3.5/jqc-1.11.3,dt-1.10.8/datatables.min.js"></script>
	<script type="text/javascript" charset="utf-8">
		$(document).ready(function() {
			$('#table').DataTable();
		} );
	</script>
<!-- data table -->

	<title>Knygų sąrašas</title>
</head>
	<header>
		<h1>Knygų sąrašas</h1>
	</header>
<div class="container table_color">
<body>
	<table id="table" class="display" cellspacing="0" width="100%">
		<thead >
			<tr>
				<th>Pavadinimas</th>
				<th>Leidimo metai</th>
				<th>Autorius (-iai)</th>
				<th>Žanras</th>
			</tr>
		</thead>
		<tbody>
			<?php
			$conn = mysqli_connect("localhost", "root", "", "NFQ");
				if (!$conn) {
			    	die("Connection failed: " . mysqli_connect_error());
				}

			$sql = "SELECT * FROM books";
			$result = mysqli_query($conn, $sql);
			                    if (mysqli_num_rows($result) > 0) {
			                      while($row = mysqli_fetch_assoc($result)){
			                      	echo '<tr id="'.$row["id"].'">' ."<td>" . $row["pavadinimas"] . "</td>" . "<td>" . $row["leidimo_metai"] . "</td>" . "<td>" . $row["autorius"]. " </td>" . "<td>" . $row["zanras"]. " </td></tr> ";
			                    }
			                }              
			?>
		</tbody>
	</table>		
</div>

<script type="text/javascript">
	$('#table > tbody > tr').click(function() {
    	var win = window.open('/new.php?id='+this.id, '_self');
  	});

	$('#table')
		.removeClass( 'display' )
		.addClass('table table-hover ');
</script>

<?php 
	$conn->close();
?>

<p class="hidden">Duomenų bazėje saugome informaciją apie knygas:
Pavadinimas;
Leidimo metai;
Autorius (-iai);
Žanras. 

Panaudodami PHP ir MySQL/MariaDB sukurkite du puslapius:
Pirmas puslapis – knygų sąrašas;
Antras puslapis – knygos informacinis puslapis, į kurį patenkame spustelėję ant knygos pavadinimo knygų sąraše.
Papildomi balai skiriami už puslapiuojamą knygų sąrašą su paieškos laukeliu ir rikiuojamais stulpeliais. 


Reikalavimai sprendimui:
Visą kodą pateikti savo GitHub repozitorijoje (pateikti nuorodą)
Projektas turi būti patalpintas internete ir viešai prieinamas (pateikti nuorodą):
Galite panaudoti https://www.heroku.com “Free”
Trumpai pagrįskite, kodėl pasirinkote tokį sprendimą (3 – 5 sakiniai)
Duomenų lentelėse turi būti bent po 50 prasmingų įrašų
Vertinsime sprendimo kokybę ir išbaigtumą
Sprendimą būtina pateikti iki 2017-02-12 23:59:59 šia nuoroda: https://goo.gl/forms/36aATgUbEFgyQn9p1
</p>

</body>
</html>

