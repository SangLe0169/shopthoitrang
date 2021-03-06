@extends('backend.dashboard')
@section('title','Sửa bài viết')
@section('contend')
<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Bài viết</h1>
			</div>
		</div><!--/.row-->
<div class="row">
			<div class="col-xs-12 col-md-12 col-lg-12">
				
				<div class="panel panel-primary">
					<div class="panel-heading">Sửa Bài viết</div>
					<div class="panel-body">
						<form method="post" enctype="multipart/form-data">
                        {{csrf_field()}}
							<div class="row" style="margin-bottom:40px">
								<div class="col-xs-8">
									<div class="form-group" >
										<label>Mã bài viết</label>
										<input required type="text" name="mabaiviet" class="form-control" value="{{$posts->pos_Mabaiviet}}"> 
									</div>
									<div class="form-group" >
										<label>Tiêu đề bài viết</label>
										<input required type="text"  name='tieude' class="form-control" value="{{$posts->pos_Tieudebaiviet}}">
									</div>
									<div class="form-group" >
                                    <label for="exampleInputName1">Nội dung bài viết</label>
                                        <textarea class="ckeditor" required name="description">{{$posts->pos_Noidungbaiviet}}</textarea>
                                        <script type="text/javascript">
                                                var editor = CKEDITOR.replace('description',{
                                                language:'vi',
                                                filebrowserImageBrowseUrl:'../ckfinder/ckfinder.html?Type=Images',
                                                filebrowserFlashBrowseUrl:'../ckfinder/ckfinder.html?Type=Flash',
                                                filebrowserImageUploadUrl:'../ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
                                                filebrowserFlashUploadUrl:'../public/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash',
                                                });
                                        </script>
										
									</div>
									<div class="form-group" >
                                    <label for="exampleInputName1">Hình ảnh</label>
                                        <input required id="img" type="file" name="img" class="form-control hidden" onchange="changeImg(this)">
                                        <img id="avatar" class="thumbnail" width="300px" src="{{asset('storage/app/avatar/'.$posts->pos_Hinhanh)}}">
										
									</div>
                                    <div class="form-group">
                                    <label for="exampleInputName1">Ngay tao</label>
                                        <input required type="date" name='date' class="form-control" id="exampleInputName" value="{{$posts->pos_Ngaytao}}"  aria-describedby="nameHelp">
                                        
                                    </div>
									
				
									
                                    <div class="modal-footer">
                                    <a href="{{asset('admin/posts')}}" type="submit" class="btn btn-danger">Hủy</a>
                                    <button type="submit" class="btn btn-success">Cập nhật</button>
                                </div>
								</div>
							</div>
						</form>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
        </div>
@stop