
<section class="page-top">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<ul class="breadcrumb">
					<li><a href="#">Home</a></li>
					<li class="active">Portfolio</li>
				</ul>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<h1>$Title</h1>
			</div>
		</div>
	</div>
</section>

<div class="container">
	<div class="col-md-3">
		<aside class="sidebar">               
            <% include Sidebar %>        
         </aside>
	</div> 
	<div class="col-md-9">
			
	<ul class="nav nav-pills sort-source" data-sort-id="portfolio" data-option-key="filter">
	<li data-option-value="*" class="active"><a href="#">Show All</a></li>
	<% loop $CategoryList %>
		<li data-option-value=".$Title"><a href="#">$Title</a></li>
	<% end_loop %>
</ul>
<hr />
	<div class="row">
		<ul class="portfolio-list sort-destination" data-sort-id="portfolio">				
			<% loop $PatientInfoDetails %>
				<% loop $Categories %>
					<li class="col-md-3 col-sm-6 col-xs-12 isotope-item {$Title}">
						<div class="portfolio-item img-thumbnail">
							<a href="$Up.Link" class="thumb-info">
								<% if $Up.Photo.URL %>     
									<% with $Up.Photo.ScaleWidth(300) %>
										<img alt="" class="img-responsive" src="{$URL}">                               
									<% end_with %>
								<% else %>
									<img alt="" class="img-responsive" src="https://via.placeholder.com/200x200">    
								<% end_if %>

																	
								<span class="thumb-info-title">
									<span class="thumb-info-inner">$Up.Title</span>
									<span class="thumb-info-type">$Up.Excerpt.LimitWordCount(15,'...    Read More')</span>
								</span>
								<span class="thumb-info-action">
									<span title="Universal" class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
								</span>
							</a>
						</div>
					</li>
				<% end_loop %>
			<% end_loop %>				
		</ul>
	</div>
</div>
	<!-- BEGIN PAGINATION -->	
	<% if $PatientInfoDetails.MoreThanOnePage %>
		<div class="row">
			<div class="col-sm-12 text-center">
				<ul class="pagination pagination-lg">
					<% if $PatientInfoDetails.NotFirstPage %>
						<li>
							<a aria-label="Previous" href="{$PatientInfoDetails.PrevLink}">
								<span aria-hidden="true">&laquo;</span>
							</a>
						</li>
					<% end_if %>
	
					<% loop $PatientInfoDetails.Pages %>
						<li <% if $CurrentBool %>class="active"<% end_if %>>
						<% if $CurrentBool %>
							<%-- Page On --%>
							<span>$PageNum</span>
						<% else %>
							<% if $Link %>
								<%-- Page Link --%>
								<a href="$Link">$PageNum</a>
							<% else %>
								<%-- Too Many Pages --%>
								<span>...</span>
							<% end_if %>
						<% end_if %>
						</li>
					<% end_loop %>
	
					<% if $PatientInfoDetails.NotLastPage %>
						<li>
							<a aria-label="Next" href="{$PatientInfoDetails.NextLink}">
								<span aria-hidden="true">&raquo;</span>
							</a>
						</li>
					<% end_if %>
				</ul>
			</div>
		</div>
	<% else %>
		<div class="row">
			<div class="col-sm-12 text-center">
				<ul class="pagination pagination-lg">
				<li class="active"><span>1</span></li>
				</ul>
			</div>
		</div>
	<% end_if %>		
	<!-- END PAGINATION --> 
</div>
<% include Footer %>