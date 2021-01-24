<%-- slider --%>
<div class="slider-container">
    <div class="slider" id="revolutionSlider" data-plugin-revolution-slider data-plugin-options='{"startheight": 600}'>
        <ul>
            <li data-transition="fade" data-slotamount="13" data-masterspeed="300" >

                <img src="$HomeBannerPhoto.URL" data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat">
                        
                <div class="tp-caption top-label lfl stl"
                        data-x="450"
                        data-y="500"
                        data-speed="300"
                        data-start="500"
                        data-easing="easeOutExpo"><strong>{$TitleOne}</strong></div>  
                <div class="tp-caption bottom-label sft stb" style="font-size:24px !important;"
                        data-x="330"
                        data-y="550"
                        data-speed="500"
                        data-start="1500"
                        data-easing="easeOutExpo"><strong>{$TitleTwo}</strong></div>                 
            </li>        
        </ul>
    </div>
</div>

<hr class="tall" />

<div class="container">
    <div class="row">
        <div class="col-md-12 col-xs-12">
            <h2 class="short word-rotator-title">
               $Content
            </h2>            
        </div>
    </div>
</div>
<div class="container">
    <div class="row">    
        <div class="col-md-6 col-xs-12">            
            <% if $LeftContent %>
                <Article class="lead" style="with=50%;">
                    {$LeftContent}    
                </Article>                         
            <% else %>
            <img class="img-responsive" src="https://via.placeholder.com/477" alt="layout styles" data-appear-animation="fadeInLeft">
            <% end_if %>
        </div>
        <div class="col-md-6 col-xs-12">
        <% if $Header %><h2><strong>{$Header}<strong></h2><% end_if %>
            <Article class="lead" style="with=50%;">
                {$Body}    
            </Article>              
        </div>
    </div>

    <hr class="tall" />

    <div class="row">
        <div class="col-md-6 col-xs-12">
            <% if $HeaderTwo %> <h2><strong>{$HeaderTwo}</strong></h2><% end_if %>
            <Article class="lead" style="with=50%;">
                {$BodyTwo}
            </Article>                
        </div>
        <div class="col-md-6 col-xs-12">
            <% if $RightContent %>
                 <Article class="lead" style="with=50%;">
                    $RightContent
                </Article>                   
            <% else %>
                <img class="img-responsive" src="https://via.placeholder.com/477" alt="layout styles" data-appear-animation="fadeInLeft">
            <% end_if %>
        </div>
    </div>
</div>
<div class="container">				
    <div class="row">
        <hr class="tall" />
    </div>				
</div>
    <%-- Patient info --%>
<div class="container">    
    <div class="row">
        <div class="col-md-12">
            <h2>Patient <strong>Information</strong></h2>
            <div class="row patient-info">
                <ul class="portfolio-list sort-destination" data-sort-id="portfolio"> 

                    <% loop CallToActions %>
                        <li class="col-md-3 col-xs-3 isotope-item websites">
                            <div class="portfolio-item img-thumbnail">
                                <a href="$LinksToAction" class="thumb-info">
                                    <% if $CTAimage %>     
                                        <% with $CTAimage.ScaleWidth(260) %>
                                            <img alt="" class="img-responsive" src="{$URL}">                               
                                        <% end_with %>
                                    <% else %>
                                        <img alt="" class="img-responsive" src="img/projects/project.jpg">    
                                    <% end_if %>
                                    <span class="thumb-info-title">
                                        <span class="thumb-info-inner">{$Title}</span>
                                        <%-- <span class="thumb-info-type"><% loop Categories %> $Title <% end_loop %> </span> --%>
                                    </span>
                                    <span class="thumb-info-action">
                                        <span title="Universal" class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
                                    </span>
                                </a>
                            </div>
                        </li> 
                    <% end_loop %>                   
                </ul>                
            </div> 
        </div>     
    </div>
</div>

<div class="container">				
    <div class="row">
        <hr class="tall" />
    </div>				
</div>

<div class="container">
    <div class="row center">
        <div class="col-md-12 col-xs-12">
            <h2 class="short word-rotator-title">
                My commitment to you: 
                <strong>
                    <span class="word-rotate" data-plugin-options='{"delay": 3500, "animDelay": 400}'>
                        <span class="word-rotate-items">
                            <span>Excellence</span>
                            <span>Quality</span>
                            <span>Compassion</span>
                            <span>Respect</span>
                            <span>Reliability</span>
                        </span>
                    </span>
                </strong>
            </h2>
        </div>
    </div>
</div>


<div class="waitemata-section" style="background: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5) ),  url(https://www.waitemataendoscopy.co.nz/media/1151/image-2.jpg) center 0 no-repeat;
        background-size:cover;">
    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-xs-12">
                <p class="lead">I am performing endoscopy at Waitemata Endoscopy Clinic.</p>
                <p class="lead">Waitemata Endoscopy Ltd are Endoscopy Centres developed in partnership with Southern 
                Cross Hospitals Limited in order to provide a comprehensive endoscopy service to patients Auckland wide, 
                from our Northern Clinic on Auckland’s North Shore to our new clinic at Lincoln Road, Henderson in West Auckland.</p>   
                </div>

                <div class="col-md-6 col-xs-12">
                    <img src="https://www.waitemataendoscopy.co.nz/media/1141/waitemata-endoscopy_logo_horizontal_tagline.png" style="width=100%;">
                </div>
            </div>
        </div>
    </section>
</div>
<% include Footer %>