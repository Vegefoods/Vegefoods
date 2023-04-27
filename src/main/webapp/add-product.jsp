<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<jsp:include page="head.jsp"></jsp:include>
<body class="goto-here">
	<jsp:include page="top.jsp"></jsp:include>

	<jsp:include page="nav.jsp"></jsp:include>

	<div class="container">
		<section class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Add Product</h3>
			</div>
			<div class="panel-body">

				<form action="">
					
					<div class="form-group">
						<label for="name" class="col-sm-3 control-label">Product Name</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" name="name" id="name"
								placeholder="Enter the name of product...">
						</div>
					</div>
					<!-- form-group // -->
					
					<!-- form-group // -->
					<div class="form-group">
						<label for="tech" class="col-sm-3 control-label">Category</label>
						<div class="col-sm-3">
							<select class="form-control">
								<option value="">Tomato</option>
								<option value="texnolog2">Potayto</option>
								<option value="texnolog3">Onion</option>
							</select>
						</div>
					</div>
					<!-- form-group // -->
					
					<div class="form-group">
						<label for="name" class="col-sm-3 control-label">Description</label>
						<div class="col-sm-9">
							<textarea class="form-control" rows="3" placeholder="Description..."></textarea>
						</div>
					</div>
					
					<div class="form-group">
						<label for="qty" class="col-sm-3 control-label">Price</label>
						<div class="col-sm-3">
							<input type="number" class="form-control" name="qty" id="qty" placeholder="Price...">
						</div>
					</div>
					<div class="form-group">
						<label for="name" class="col-sm-3 control-label">Image</label>
						<div class="col-sm-3">
							<!-- <label class="control-label small" for="file_img">Type (jpg/png):</label>  -->
							<input type="file" name="file_img" id="imageProduct"/>
							<img style="height: 50px; width: 50px;" class="mt-2" src="" alt="" id="img">
						</div>
					</div>
					
					<hr>
					<div class="form-group">
						<div class="col-sm-offset-3 col-sm-9">
							<a href="#" class="btn btn-danger">Cancel</a>
							<button type="submit" class="ml-2 btn btn-primary">Submit</button>
						</div>
					</div>
					<!-- form-group // -->
				</form>

			</div>
			<!-- panel-body // -->
		</section>
		<!-- panel// -->


	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- container// -->
	<script type="text/javascript">
		 const image = document.getElementById('img')
	     const input = document.getElementById('imageProduct')
	
	     input.addEventListener("change", () => {
	         image.src=URL.createObjectURL(input.files[0])
	     })
	</script>
	
</body>
</html>