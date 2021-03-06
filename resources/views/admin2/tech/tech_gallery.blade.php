@extends('admin2.layouts.template')



<link href="{{URL::asset('back/assets/upload_image/css/fileinput.css')}}" rel="stylesheet">
<style>
						.btn-file{
							width: 130px;
						}
html .wizard-progress.wizard-progress-lg ul li a, html.dark .wizard-progress.wizard-progress-lg ul li a:hover {
    text-decoration: none;
    background: none;
}
						</style>
@section('admin2.content')






        <section role="main" class="content-body">

          <header class="page-header">
            <h2>{{$datahead}}</h2>

            <div class="right-wrapper pull-right">
              <ol class="breadcrumbs">
                <li>
                  <a href="{{url('admin/dashboard')}}">
                    <i class="fa fa-home"></i>
                  </a>
                </li>

                <li><span>{{$datahead}}</span></li>
              </ol>

              <a class="sidebar-right-toggle" data-open="sidebar-right" ><i class="fa fa-chevron-left"></i></a>
            </div>
          </header>


          <!-- start: page -->



          <div class="row">








                        <div class="col-md-10 col-md-offset-1">

                          <section class="panel">
                            <div class="panel-body">

															<div class="wizard-progress wizard-progress-lg">
																	<div class="steps-progress">
																		<div class="progress-indicator" style="width: {{$proocess}}%;"></div>
																	</div>
																	<ul class="nav wizard-steps">
																		<li class="nav-item active ">
																			<a class="nav-link" href="{{url('admin/tech_list/'.$id.'/edit')}}"><span>1</span>ข้อมูลช่าง</a>
																		</li>
																		<li class="nav-item
                                    @if($img_count > 0)
                                    active
                                    @endif
                                     completed">
																			<a class="nav-link" href="{{url('admin/tech_gallery/'.$id)}}"><span>2</span>รูปภาพประกอบ</a>
																		</li>
																		<li class="nav-item   @if($job_count > 0)
                                      active
                                      @endif">
																			<a class="nav-link " href="{{url('admin/tech_job/'.$id)}}"><span>3</span>ผลงานช่าง</a>
																		</li>
																		<li class="nav-item @if($success > 0)
                                    active
                                    @endif">
																			<a class="nav-link" ><span>4</span>สำเร็จ</a>
																		</li>
																	</ul>
																</div>


                              <form  method="POST" action="{{url('admin/add_gallery')}}" enctype="multipart/form-data">

  		                                          {{ csrf_field() }}

  		                                          <div class="row">
  		                                              <div class="col-md-12" style="padding-right: 15px;">


  		                            <div class="form-group">


  		                <label for="exampleInputFile">เพิ่มรูปภาพประกอบ อย่างน้อย 4 รูปขึ้นไป</label>


  		                <input id="file-0a" class="file " type="file" name="product_image[]" accept="image/*" multiple>
  		                <input type="hidden" name="pro_id" class="form-control" value="{{ $id }}" required>



  		                </div>

  		                <div class="">
  		                    <button type="submit" class="btn btn-info btn-fill btn-wd">อัพโหลดรูปภาพ</button>
  		                </div>



  		                </div>
  		                </div>

  		              </form>

          									</div>
          								</div>







													<div class="col-md-10 col-md-offset-1">

														<!-- start: page -->
                  <section class=" content-with-menu-has-toolbar media-gallery">
                  <div class="content-with-menu-container">

                    <form  action="{{url('admin/tech_image_del/')}}" method="post" onsubmit="return(confirm('Do you want Delete'))">
                      <input type="hidden" name="_method" value="POST">
                       <input type="hidden" name="_token" value="{{ csrf_token() }}">
											 <input type="hidden" name="pro_id" class="form-control" value="{{ $id }}" required>

                  <div class="row mg-files" data-sort-destination data-sort-id="media-gallery">

                  @if($img_all)
                  @foreach($img_all as $img_u)
                    <div class="isotope-item  col-sm-6 col-md-4 col-lg-3" style="min-height: 300px;">
                      <div class="thumbnail">
                        <div class="">
                          <a class="thumb-image" >
                            <img src="{{url('assets/tech_img/'.$img_u->image)}}" class="img-responsive" >
                          </a>
                          <br>
                          <div class="mg-thumb-options">
                            <div class="checkbox-custom checkbox-default">
                              <input type="checkbox" name="product_image[]" value="{{$img_u->id}}"  >
                              <label>เลือกรูปภาพประกอบ</label>
                            </div>
                          </div>
                        </div>

                        <div class="mg-description">

                          <small class="pull-right text-muted"></small>
                        </div>
                      </div>
                    </div>
                  @endforeach
                  @endif




                  </div>
                  <button type="submit" class="btn btn-danger pull-right" style="margin-top:15px;">ลบรูปภาพที่เลือกไว้</button>
                  </form>



                  </div>
                  </section>
                  <!-- end: page -->

									<br><br><br><br><br><br><br><br>

														</div>

          						</div>









          						</div>




</section>
@stop



@section('scripts')

<script src="{{URL::asset('back/assets/upload_image/js/fileinput.js')}}"></script>



@if ($message = Session::get('add_success_img'))
<script type="text/javascript">

  var stack_topleft = {"dir1": "down", "dir2": "right", "push": "top"};
      var notice = new PNotify({
            title: 'ทำรายการสำเร็จ',
            text: 'ยินดีด้วย ได้ทำการเพิ่มข้อมูล สำเร็จเรียบร้อยแล้วค่ะ',
            type: 'success',
            addclass: 'stack-topright'
          });
</script>
@endif

@stop('scripts')
