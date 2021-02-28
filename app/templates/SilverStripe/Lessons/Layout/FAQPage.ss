
<section class="page-top">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <ul class="breadcrumb">
                    <li><a href="#">Home</a></li>
                    <li class="active">Pages</li>
                </ul>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <h1>FAQ</h1>
            </div>
        </div>
    </div>
</section>

<div class="container">

    <h2>Frequently Asked <strong>Questions</strong></h2>

    <div class="row">
        <div class="col-md-12">
            <p class="lead">
                $Content </p>
        </div>
    </div>
    <hr>
    <div class="row">
        <div class="col-md-12">
            <div class="toogle" data-plugin-toggle>
                <% if $Frquestnlyaskquestions %>
                    <% loop $Frquestnlyaskquestions %>
                        <section class="toggle id{$ID} hiddentag" data-faqID="{$ID}">
                            <label>{$FAQtitle}</label>
                                    {$FAQdescription}
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
</div>

<% include Footer %>