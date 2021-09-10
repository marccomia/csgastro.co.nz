
<section class="page-top">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <ul class="breadcrumb">
                    <li><a href="#">Home</a></li>
                    <li class="active">Contact Me</li>
                </ul>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <h1>Contact Me</h1>
            </div>
        </div>
    </div>
</section>
  
<div class="container push-bottom">
    <div class="row">
        <div class="col-md-6">
            <% if Message %>
                $Message
            <% end_if %>
            $ContactForm            
        </div>

        <div class="col-md-6">
            <div class="contact-details">
                <% if $CompanyAdddress %>
                    <% loop $CompanyAddress %>
                        <h4>{$cName}</h4>
                        <ul class="list-unstyled">
                                <li><i class="fa fa-map-marker"></i> <strong>Address:</strong> {$cAddress}</li>
                                <% if $cPhone %><li><i class="fa fa-phone"></i> <strong>Phone:</strong> {$cPhone}</li><% end_if %>
                                <% if $cFax %><li><i class="fa fa-phone"></i> <strong>Phone:</strong> {$cFax}</li><% end_if %>
                                <% if $cEmail %><li><i class="fa fa-evelope"></i> <strong>Phone:</strong> {$cEmail}</li><% end_if %>
                            </ul>
                        <hr />
                    <% end_loop %>  
                <% end_if %>
                <p> $Content </p>
            </div>
        </div>

    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-md-6">
            $MapEmbedded
        </div>
        
        <div class="col-md-6">
            $MapEmbeddedTwo
        </div> 
    </div>
</div>

<% include FooterBanner %>