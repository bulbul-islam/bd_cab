<section class="content">
    <div class="row">
        <div class="col-xs-12">

            <!-- /.box -->

            <div class="box">
                <div class="box-header">
                    <h3 class="box-title">Company Table</h3>
                    <a href="<?php echo base_url('users/add_company');?>">
                        <button class="btn btn-primary">Add New Company</button>
                    </a>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <table id="example1" class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th>Sl</th>
                            <th>Logo</th>
                            <th>Address</th>    
                        </tr>
                        </thead>
                        <tbody>
						<?php $counter=1;foreach($view as $row):?>
							<tr>
								<td><?php echo $counter++;?></td>
								<td><?php echo $row->logo;?></td>
								<td><?php echo $row->address;?></td>
							</tr>
						<?php endforeach;?>
                        </tbody>

                    </table>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->
        </div>
        <!-- /.col -->
    </div>
    <!-- /.row -->
</section>
<!-- /.content -->
<!-- /.content-wrapper -->