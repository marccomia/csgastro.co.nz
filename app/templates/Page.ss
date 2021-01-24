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
		<div class="body">
			<% include TopNav %>
			<div role="main" class="main">  
				<% if $Form %>
					<div class="container">
						<div class="row">
							<div class="col-md-offset-4">
								$Form
							</div>
						</div>					 
					</div>
				<% else %>
					$Layout
				<% end_if %>
			</div>
		</div>
		<% include JSlink %>

	</body>
</html>