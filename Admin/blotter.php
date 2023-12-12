<title>BMS | Blotter Management</title>
<?php include 'navbar.php'; ?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row">
          <div class="col-sm-6">
            <h3>Blotter</h3>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="dashboard.php">Home</a></li>
              <li class="breadcrumb-item active">Blotter Management</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- /.col -->
          <div class="col-md-12">
            <div class="card">
              <div class="card-header p-2">
                <a href="blotter_add.php" class="btn btn-sm bg-primary ml-2"><i class="fa-sharp fa-solid fa-square-plus"></i> New Blotter</a>
                <a href="export.php?export=blotter" class="btn btn-sm bg-success float-right mr-2"><i class="fa-solid fa-file-excel"></i> Export</a>
                <!-- <div class="card-tools mr-1 mt-3">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                </div> -->
              </div>
              <div class="card-body p-3">
                 <!-- <table id="example1" class="table table-bordered table-hover text-sm"> -->
                 <table id="exampleUser" class="table table-bordered table-hover text-sm">
                  <thead>
                  <tr> 
                    <th>COMPLAINANTS</th>
                    <th>ACCUSED/SUBJECT</th>
                    <th>INCIDENT NATURE</th>
                    <th>INCIDENT DATETIME</th>
                    <th>INCIDENT ADDRESS</th>
                    <th>STATUS</th>
                    <th>TOOLS</th>
                  </tr>
                  </thead>
                  <tbody id="users_data">
                    <?php 
                      $sql = mysqli_query($conn, "SELECT * FROM blotter ORDER BY c_firstname");
                      while ($row = mysqli_fetch_array($sql)) {
                    ?>
                    <tr>
                        <td><?php echo ucwords($row['c_firstname'].' '.$row['c_middlename'].' '.$row['c_lastname'].' '.$row['c_suffix']); ?></td>
                        <td><?php echo ucwords($row['acc_firstname'].' '.$row['acc_middlename'].' '.$row['acc_lastname'].' '.$row['acc_suffix']); ?></td>
                        <td><?php echo ucwords($row['incidentNature']); ?></td>
                        <td><?php echo date("F d, Y",strtotime($row['incidentDate'])).' '.$row['incidentTime']; ?></td>
                        <td><?php echo ucwords($row['incidentAddress']); ?></td>
                        <td>
                          <?php 
                            if($row['blotter_status'] == 0) {
                              echo '<span class="badge badge-info">Open</span>';
                            } elseif($row['blotter_status'] == 1) {
                              echo '<span class="badge badge-success">Closed</span>';
                            } else {
                              echo '<span class="badge badge-warning">Under Investigation</span>';
                            }
                          ?>
                        </td>
                        <td>
                          <a class="btn btn-primary btn-xs" href="blotter_view.php?blotter_Id=<?php echo $row['blotter_Id']; ?>"><i class="fas fa-folder"></i> View</a>
                          <a class="btn btn-info btn-xs" href="blotter_update.php?blotter_Id=<?php echo $row['blotter_Id']; ?>"><i class="fas fa-pencil-alt"></i> Update</a>
                          <button type="button" class="btn bg-warning btn-xs" data-toggle="modal" data-target="#updateStatus<?php echo $row['blotter_Id']; ?>"><i class="fas fa-pencil-alt"></i> Status</button>
                          <button type="button" class="btn bg-danger btn-xs" data-toggle="modal" data-target="#delete<?php echo $row['blotter_Id']; ?>"><i class="fas fa-trash"></i> Delete </button>
                        </td> 
                    </tr>
                  <?php include 'blotter_delete.php'; } ?>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>

<?php include 'footer.php';  ?>
<!-- <script>
  window.addEventListener("load", window.print());
</script> -->