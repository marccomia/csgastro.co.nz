<h4>Categories</h4>             

<ul class="sitemap list icons ">
    <% loop $CategoryList %>        
        <li><a href="#">$Title</a>  
            <% loop $PatientInfoDetailsPage %>                    
                    <ul class="list icons">            
                        <li>
                            <i class="fa fa-caret-right"></i><a href="$Link">$Title</a>
                        </li>
                    </ul>      
            <% end_loop %>
        </li>
    <% end_loop %>       
</ul>




































<%-- <% loop $PatientInfoDetails %>
    <% loop $Categories %>
        <li class="col-md-3 col-sm-6 col-xs-12 isotope-item {$Title}">
            <div class="portfolio-item img-thumbnail">
                <a href="$Up.Link" class="thumb-info">
                    <% if $Up.Photo.URL %>
                        <img alt="$Up.Photo.Title" class="img-responsive" src="$Up.Photo.URL">
                    <% else %>
                        <img alt="No Image" class="img-responsive" src="img/projects/project-1.jpg">
                    <% end_if %>										
                    <span class="thumb-info-title">
                        <span class="thumb-info-inner">$Up.Title</span>
                        <span class="thumb-info-type">$Up.Excerpt.LimitWordCount(10,'...')</span>
                    </span>
                    <span class="thumb-info-action">
                        <span title="Universal" class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
                    </span>
                </a>
            </div>
        </li>
    <% end_loop %>
<% end_loop %>				 --%>