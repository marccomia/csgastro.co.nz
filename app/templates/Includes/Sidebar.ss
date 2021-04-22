<h4>Categories</h4>             

<ul class="sitemap list icons ">
    <% loop $CategoryList %>        
        <li>
            <a href="#">$Title</a>  
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