<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<jsp:include page="head.jsp"></jsp:include>
<body class="goto-here">
	<jsp:include page="top.jsp"></jsp:include>
		
	<jsp:include page="nav.jsp"></jsp:include>

	<div class="hero-wrap hero-bread" style="background-image: url('images/bg_1.jpg');">
		<div class="container">
			<div class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-9 ftco-animate text-center">
					<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>Cart</span></p>
					<h1 class="mb-0 bread">My Cart</h1>
				</div>
			</div>
		</div>
	</div>

	<section class="ftco-section ftco-cart">
		<div class="container">
			<div class="row">
				<div class="col-md-12 ftco-animate">
					<div class="cart-list">
						<table class="table">
							<thead class="thead-primary">
								<tr class="text-center">
									<th>&nbsp;</th>
									<th>Product name</th>
									<th>Price</th>
									<th>Quantity</th>
									<th>Total</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<tr class="text-center">

									<td class="image-prod">
										<div class="img" style="background-image:url(images/product-3.jpg);"></div>
									</td>

									<td class="product-name">
										<h3>Bell Pepper</h3>
										<p>Far far away, behind the word mountains, far from the countries</p>
									</td>

									<td class="price">$4.90</td>

									<td class="quantity">
										<div class="input-group mb-3">
											<button type="button" class="quantity-left-minus" data-type="minus" data-field="">
						                   		<i class="ion-ios-remove"></i>
						                	</button>
											<input type="number" name="quantity" id="quantity"
												class="quantity form-control input-number" value="1" min="1" max="100">
											<button type="button" class="quantity-right-plus" data-type="plus" data-field="">
						                    	<i class="ion-ios-add"></i>
						                 	</button>
										</div>
									</td>

									<td class="total">$4.90</td>
									<td class="product-remove">
										<a href="#" class="mr-2"><span class="ion-ios-close"></span></a>
										<a href="#"><span class="ion-ios-checkmark"></span></a>
									</td>
								</tr><!-- END TR-->
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="row justify-content-end">
				<div class="col-lg-4 mt-5 cart-wrap ftco-animate">
					<div class="cart-total mb-3">
						<h3>Coupon Code</h3>
						<p>Enter your coupon code if you have one</p>
						<form action="#" class="info">
							<div class="form-group">
								<label for="">Coupon code</label>
								<input type="text" class="form-control text-left px-3" placeholder="">
							</div>
						</form>
					</div>
					<p><a href="checkout.html" class="btn btn-primary py-3 px-4">Apply Coupon</a></p>
				</div>
				<div class="col-lg-4 mt-5 cart-wrap ftco-animate">
					<div class="cart-total mb-3">
						<h3>Estimate shipping and tax</h3>
						<p>Enter your destination to get a shipping estimate</p>
						<form action="#" class="info">
							<div class="form-group">
								<label for="">Country</label>
								<input type="text" class="form-control text-left px-3" placeholder="">
							</div>
							<div class="form-group">
								<label for="country">State/Province</label>
								<input type="text" class="form-control text-left px-3" placeholder="">
							</div>
							<div class="form-group">
								<label for="country">Zip/Postal Code</label>
								<input type="text" class="form-control text-left px-3" placeholder="">
							</div>
						</form>
					</div>
					<p><a href="checkout.html" class="btn btn-primary py-3 px-4">Estimate</a></p>
				</div>
				<div class="col-lg-4 mt-5 cart-wrap ftco-animate">
					<div class="cart-total mb-3">
						<h3>Cart Totals</h3>
						<p class="d-flex">
							<span>Subtotal</span>
							<span>$20.60</span>
						</p>
						<p class="d-flex">
							<span>Delivery</span>
							<span>$0.00</span>
						</p>
						<p class="d-flex">
							<span>Discount</span>
							<span>$3.00</span>
						</p>
						<hr>
						<p class="d-flex total-price">
							<span>Total</span>
							<span>$17.60</span>
						</p>
					</div>
					<p><a href="checkout.html" class="btn btn-primary py-3 px-4">Proceed to Checkout</a></p>
				</div>
			</div>
		</div>
	</section>
	
	<jsp:include page="footer.jsp"></jsp:include>

	<script>
		$(document).ready(function () {

			var quantitiy = 0;
			$('.quantity-right-plus').click(function (e) {

				// Stop acting like a button
				e.preventDefault();
				// Get the field name
				var quantity = parseInt($('#quantity').val());

				// If is not undefined

				$('#quantity').val(quantity + 1);


				// Increment

			});

			$('.quantity-left-minus').click(function (e) {
				// Stop acting like a button
				e.preventDefault();
				// Get the field name
				var quantity = parseInt($('#quantity').val());

				// If is not undefined

				// Increment
				if (quantity > 1) {
					$('#quantity').val(quantity - 1);
				}
			});

		});
	</script>

</body>

</html>