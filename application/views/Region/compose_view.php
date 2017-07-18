<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Posts
        <small>index</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Examples</a></li>
        <li class="active">Blank page</li>
      </ol>
    </section>

    <style media="screen">
      .cstbutton{
        margin-right: 10px !important;
      }
    </style>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="box">
            <div class="box-header">
              <h3 class="box-title">Make a Post HaloNesia</h3>
              
            </div>
            <!-- /.box-header -->
            <div class="box-body">
            <h3><b>Berisi Form untuk membuat postingan pada place tertentu.</b></h3>
            
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Modal -->
<div class="modal fade" id="myModal" role="dialog">

    <div class="modal-dialog" role="document">

    <div class="modal-content">

    <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Tutup"><span aria-hidden="true">&times;</span></button>

    <h4 class="modal-title">Add Region</h4>
    </div>
          <div class="modal-body">
            <!--form start-->
            
            <form id="form" enctype="multipart/form-data">
            <div class="form-group">
              <label for="nama">Region Code<font color="red">*</font></label>
              <input type="text" maxlength="3" class="form-control" id="code" name="code" placeholder="Input Region Code" required>
            </div>
            <div class="form-group">
              <label for="nama">Region Name<font color="red">*</font></label>
              <input type="text" class="form-control" id="nama" name="nama" placeholder="Input Region Name" required>
            </div>
            <div class="form-group">
              <label for="username">Description<font color="red">*</font></label>
              <textarea class="form-control" id="description" name="description" placeholder="Input Region Description" required>
              </textarea>
            </div>
            <div class="form-group">
              <label for="username">Latitude</label>
              <input type="number" step="any" class="form-control" id="lat" name="lat" placeholder="Latitude of Location">
            </div>
            <div class="form-group">
              <label for="username">Longitude</label>
              <input type="number" step="any" class="form-control" id="long" name="long" placeholder="Longitude of Location">
            </div>
            <!--end form-->
            <button type="submit" class="btn btn-primary" id="submit" style="float:right">Submit</button>
          </form>
            <!--end form-->
          </div>
          <div class="modal-footer">
            <!--button type="button" class="btn btn-default" data-dismiss="modal">Close</button-->
          </div>

        </div>

      </div>

    </div>
    <!-- end modal -->

    <!-- Modal edit-->
  <div class="modal fade" id="myModal2" role="dialog">

      <div class="modal-dialog" role="document">

      <div class="modal-content">

      <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Tutup"><span aria-hidden="true">&times;</span></button>

      <h4 class="modal-title">Edit Region</h4>
      </div>
            <div class="modal-body">
              <!--form start-->
              
              <form id="formEdit" enctype="multipart/form-data">
            <div class="form-group">
              <label for="nama">Region Code<font color="red">*</font></label>
              <input type="text" maxlength="3" class="form-control" id="codeEdit" name="codeEdit" placeholder="Input Region Code" required>
            </div>
            <div class="form-group">
              <label for="nama">Region Name<font color="red">*</font></label>
              <input type="text" class="form-control" id="namaEdit" name="namaEdit" placeholder="Input Region Name" required>
            </div>
            <div class="form-group">
              <label for="username">Description<font color="red">*</font></label>
              <textarea class="form-control" id="descriptionEdit" name="descriptionEdit" placeholder="Input Region Description" required>
              </textarea>
            </div>
            <div class="form-group">
              <label for="username">Latitude</label>
              <input type="number" step="any" class="form-control" id="latEdit" name="latEdit" placeholder="Latitude of Location" required>
            </div>
            <div class="form-group">
              <label for="username">Longitude</label>
              <input type="number" step="any" class="form-control" id="longEdit" name="longEdit" placeholder="Longitude of Location" required>
            </div>
            <!--end form-->
            <button type="submit" class="btn btn-primary" id="submit" style="float:right">Submit</button>
          </form>
              <!--end form-->
            </div>
            <div class="modal-footer">
              <!--button type="button" class="btn btn-default" data-dismiss="modal">Close</button-->
            </div>

          </div>

        </div>

      </div>
      <!-- end modal edit -->
<script type="text/javascript">

</script>