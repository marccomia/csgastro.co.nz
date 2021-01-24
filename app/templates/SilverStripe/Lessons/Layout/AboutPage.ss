<section class="page-top">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <ul class="breadcrumb">
                    <li><a href="$AbsoluteURL">Home</a></li>
                    <li class="active">$Title</li>
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
    <div class="row">
        <div class="col-md-4">
            <div class="owl-carousel" data-plugin-options='{"items": 1}'>
                <div>
                    <div class="thumbnail">
                        <img alt="" height="300" class="img-responsive" src="$Photo.URL">
                    </div>
                </div>
                <% if $Photo2.URL %>
                <div>
                    <div class="thumbnail">
                        <img alt="" height="300" class="img-responsive" src="$Photo2.URL">
                    </div>
                </div>
                <% end_if %>
            </div>
        </div>
        <div class="col-md-8">
            <h2 class="shorter"><strong>$MainTitle</strong></h2>
            <h4>Consultant Gastroenterologist and Physician</h4>
            <p class="lead">$Content</p>
        </div>            
        <div class="toogle" data-plugin-toggle>
            <% if $AboutArticlesObject %>
                <% loop $AboutArticlesObject %>                        
                    <section>
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