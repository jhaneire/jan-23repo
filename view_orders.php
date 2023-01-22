<?php include('head.php');?>
<?php include('header.php');?>
<?php include('sidebar.php');



if(isset($_GET['id']))
{ ?>




<div class="popup popup--icon -question js_question-popup popup--visible">
<div class="popup__background"></div>
<div class="popup__content">
<h3 class="popup__content__title">
Sure
</h1>
<p>Are You Sure To Delete This Record?</p>
<p>
<a href="del_order.php?id=<?php echo $_GET['id']; ?>" class="button button--success" data-for="js_success-popup">Yes</a>
<a href="view_order.php" class="button button--error" data-for="js_success-popup">No</a>
</p>
</div>
</div>
<?php } ?>



<!-- Page wrapper  -->
<div class="page-wrapper">
<!-- Bread crumb -->
<div class="row page-titles">
<div class="col-md-5 align-self-center">
<h3 class="text-primary"> Laundry List</h3> </div>
<div class="col-md-7 align-self-center">
<ol class="breadcrumb">
<li class="breadcrumb-item"><a href="index.php">Home</a></li>
<li class="breadcrumb-item active">Laundry Management</li>
</ol>
</div>
</div>
<!-- End Bread crumb -->
<!-- Container fluid  -->
<div class="container-fluid-3">
<!-- Start Page Content -->

<!-- /# row -->
<div class="card-3">

<div class="card-body">

	<?php if(isset($useroles)){  if(in_array("add_order",$useroles)){ ?> 

		<a href="add_order.php"><button class="btn btn-primary">Add Laundry</button></a>
    <a href="receipt.php"><button class="btn btn-primary">Print Receipt</button></a>

<?php } } ?>

<div class="table-responsive m-t-40">
<table id="myTable" class="table table-bordered table-striped"  data-toggle="table" >
<thead>
<tr>


<th>	ORDER SLIP NO.	<br></th>
<th>	Client Name 	<br></th>
<th>	MONTH			<br></th>
<th>	Week			<br></th>
<th>	Pickup Date		<br></th>
<th>	Delivery Date	<br></th>
<th>	Linen			<br></th>
<th>	Towel			<br></th>
<th>	Pillowcase		<br></th>
<th>	Robe			<br></th>
<th>	Rug				<br></th>
<th>	Face Towel		<br></th>
<th>	Pillow			<br></th>
<th>	Weight(KG)		<br></th>
<th>	Delivery Fee 	<br></th>
<th>	Total(PHP):		<br></th>
<th>	Status			<br></th>
<th>	Action 			<br></th>



</tr>
</thead>
<tbody>




<?php 
include 'connect.php';
$sql = "SELECT * FROM `order`";
$result = $conn->query($sql);




while($row = $result->fetch_assoc())
{


$sql1 = "SELECT * FROM `service` where id='".$row['sname']."'" ;
$result1 = $conn->query($sql1);
$row1 = $result1->fetch_assoc();

$sql2 = "SELECT * FROM `customer` where 
id='".$row['fname']."'";
$result2 = $conn->query($sql2);
$row2 = $result2->fetch_assoc();







?>
<tr>

<td>0<?php echo $row['id']; ?></td>
<td><?php echo $row2['fname']; ?></td>
<td><?php echo $row['month']; ?></td>
<td><?php echo $row['week']; ?></td>
<td><?php echo $row['todays_date']; ?></td>
<td><?php echo $row['delivery_date']; ?></td>
<td><?php echo $row['linen']; ?></td>
<td><?php echo $row['towel']; ?></td>
<td><?php echo $row['pillowcase']; ?></td>
<td><?php echo $row['robe']; ?></td>
<td><?php echo $row['rug']; ?></td>
<td><?php echo $row['facetowel']; ?></td>
<td><?php echo $row['pillow']; ?></td>
<td><?php echo $row['weight']; ?></td>
<td><?php echo $row['prizes']; ?></td>
<td><?php echo $row['total']; ?></td>

<?php if ($row['delivery_status']==0) {
?>
<td>Pending</td>
<?php } 
else{

?>
<td>Completed</td>
<?php }?>
<td>
<?php if ($row['delivery_status']==0) {
?>



<a href="complete_order.php?id=<?=$row['id'];?>"><button type="button" class="btn btn-xs btn-danger" ><i class="fa fa-exchange"></i></button></a>
<?php }?>


<?php if(isset($useroles)){  if(in_array("edit_order",$useroles)){ ?> 
<a href="edit_order.php?id=<?=$row['id'];?>"><button type="button" class="btn btn-xs btn-primary" ><i class="fa fa-pencil"></i></button></a>
<?php } } ?>

<?php if(isset($useroles)){  if(in_array("delete_order",$useroles)){ ?> 
<a href="view_order.php?id=<?=$row['id'];?>"><button type="button" class="btn btn-xs btn-danger" ><i class="fa fa-trash"></i></button></a>
<?php } } ?>




</td>
</tr>
<?php

 } ?>

</tbody>
<tfoot>
  <tr>
    <th colspan="15" style="text-align:right">TOTAL:</th>
    <th></th>
    <th></th>
  </tr>
</tfoot>
</table>



  <script>
  $(document).ready(function() {

    if ($.fn.DataTable.isDataTable('#myTable')) {
      $('#myTable').DataTable().destroy();
    }

    $('#myTable').DataTable({
      "pagingType": "full_numbers",
      "lengthMenu": [
        [10, 25, 50, -1],
        [10, 25, 50, "All"]
      ]
    });
  });
  </script>

<script>
  $('#myTable').DataTable({
    footerCallback: myFooterCallback
  });
</script>

</div>
</div>
</div>


<?php include('footer.php');?>



<link rel="stylesheet" href="popup_style.css">
<?php if(!empty($_SESSION['success'])) {  ?>
<div class="popup popup--icon -success js_success-popup popup--visible">
<div class="popup__background"></div>
<div class="popup__content">
<h3 class="popup__content__title">
Success 
</h1>
<p><?php echo $_SESSION['success']; ?></p>
<p>
<button class="button button--success" data-for="js_success-popup">Close</button>
</p>
</div>
</div>
<?php unset($_SESSION["success"]);  
} ?>
<?php if(!empty($_SESSION['error'])) {  ?>
<div class="popup popup--icon -error js_error-popup popup--visible">
<div class="popup__background"></div>
<div class="popup__content">
<h3 class="popup__content__title">
Error 
</h1>
<p><?php echo $_SESSION['error']; ?></p>
<p>
<button class="button button--error" data-for="js_error-popup">Close</button>
</p>
</div>
</div>
<?php unset($_SESSION["error"]);  } ?>


<style>
  @media print, export {
    .no-print {
      display: none;
    }
  }
</style>

<script>
var addButtonTrigger = function addButtonTrigger(el) {
el.addEventListener('click', function () {
var popupEl = document.querySelector('.' + el.dataset.for);
popupEl.classList.toggle('popup--visible');
});
};

Array.from(document.querySelectorAll('button[data-for]')).
forEach(addButtonTrigger);
</script>



<script>
$(document).ready(function() {

	if ($.fn.DataTable.isDataTable('#myTable')) {
  	$('#myTable').DataTable().destroy();
	}

  $('#myTable').DataTable({
    "columnDefs": [
    { "targets": [16, 17], "className": "no-print" }
    ],
    "pagingType": "full_numbers",
    "lengthMenu": [
      [10, 25, 50, -1],
      [10, 25, 50, "All"]
    ],
    "dom": 'lBfrtip',
    "buttons": [
      {
        "extend": 'pdfHtml5',
        "text": 'PDF',
        "pageSize": 'A4',
        "orientation": 'landscape'
      },
      {
        "extend": 'print',
        "orientation": 'landscape'
      },
      'copy', 'csv', 'excel'
    ],

    "footerCallback": function ( row, data, start, end, display ) {
      var api = this.api(), data;
 
      // Remove the formatting to get integer data for summation
      var intVal = function ( i ) {
        return typeof i === 'string' ?
          i.replace(/[\$,]/g, '')*1 :
          typeof i === 'number' ?
          i : 0;
      };
 
      // Total over all pages
      total = api
        .column( 15 )
        .data()
        .reduce( function (a, b) {
          return intVal(a) + intVal(b);
                }, 0);

      // Total over this page
		  pageTotal = api
		  .column( 15, { page: 'current'} )
		  .data()
		  .reduce( function (a, b) {
			  return intVal(a) + intVal(b);
		  }, 0 );

		  // Update footer
		  $( api.column( 15 ).footer() ).html('₱' + (pageTotal).toFixed(2));
		  $( api.column( 16 ).footer() ).html('₱' + (total).toFixed(2) + ' total');
      },
  });
});
</script>

