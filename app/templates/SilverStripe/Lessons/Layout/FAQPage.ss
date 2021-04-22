<% include TopBreadcrumbs %>

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