<!DOCTYPE html>
<html>
	<head>

		<% base_tag %>
        $MetaTags
		<!-- Mobile Metas -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<% include CSSlink %>
		<!--[if IE]>
			<link rel="stylesheet" href="css/ie.css">
		<![endif]-->

		<!--[if lte IE 8]>
			<script src="lib/respond/respond.js"></script>
			<script src="lib/excanvas/excanvas.js"></script>
		<![endif]-->

	</head>
	<body>
			<div role="main" class="main">

				<section class="page-top">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<ul class="breadcrumb">
									<li><a href="$AbsoluteURL">Home</a></li>
									<li class="active">Pages</li>
								</ul>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<h1>404 - Page Not Found</h1>
							</div>
						</div>
					</div>
				</section>

				<div class="container">

					<section class="page-not-found">
						<div class="row">
							<div class="col-md-6 col-md-offset-1">
								<div class="page-not-found-main">
									<h2>404 <i class="fa fa-file"></i></h2>
									<p>We're sorry, but the page you were looking for doesn't exist.</p>
								</div>
							</div>
							<div class="col-md-4">
								<h4>Here are some useful links</h4>
                                <ul class="nav nav-list primary">
                                    <% loop Menu(1) %>
									    <li><a href="$AbsoluteURL">$Title</a></li>
                                    <% end_loop %>
								</ul>
							</div>
						</div>
					</section>

				</div>
                
            </div>
            <% include Footer %>     
            <% include JSlink %>    
        </body>
    </html>