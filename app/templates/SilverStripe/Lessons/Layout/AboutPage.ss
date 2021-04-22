<% include TopBreadcrumbs %>

<div class="container">
    <div class="row">
        <div class="col-md-4">
            <div class="owl-carousel" data-plugin-options='{"items": 1}'>
                <div class="thumbnail">
                    <img alt="$Photo.Title" class="img-responsive" src="$Photo.URL">
                </div>
                <% if $Photo2.URL %>
                <div>
                    <div class="thumbnail">
                        <img alt="$Photo.Title"  class="img-responsive" src="$Photo2.URL">
                    </div>
                </div>
                <% end_if %>
            </div>
        </div>
        <div class="col-md-8">
            <div class="content">
                <h2 class="shorter"><strong>$MainTitle</strong></h2>
                <h4>Consultant Gastroenterologist and Physician</h4>
                <p class="lead">$Content</p>
             </div>
        </div>            
        <div class="toogle" data-plugin-toggle>
            <% if $AboutArticlesObject %>
                <% loop $AboutArticlesObject %>                        
                    <section class="content">
                        <label>$Header</label>
                    $Body
                    </section>                        
                <% end_loop %>
            <% end_if %>
        </div>
    </div>
</div>
<div class="container">				
    <div class="row">
        <hr class="tall" />
    </div>				
</div>	
<% include Footer %>