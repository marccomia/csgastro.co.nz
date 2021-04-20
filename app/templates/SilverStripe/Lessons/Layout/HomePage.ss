<%-- slider --%>
<div class="slider-container">
    <div class="slider" id="revolutionSlider" data-plugin-revolution-slider data-plugin-options='{"startheight": 600}'>
        <ul>
            <li data-transition="fade" data-slotamount="13" data-masterspeed="300" >
                <img class="img-responsive" src="$HomeBannerPhoto.URL" data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat">
                <div class="tp-caption top-label lfl stl"
                    data-x="450"
                    data-y="500"
                    data-speed="300"
                    data-start="500"
                    data-easing="easeOutExpo"><strong>{$TitleOne}</strong>
                </div>  
                <div class="tp-caption bottom-label sft stb" style="font-size:24px !important;"
                    data-x="330"
                    data-y="550"
                    data-speed="500"
                    data-start="1500"
                    data-easing="easeOutExpo"><strong>{$TitleTwo}</strong>
                </div>                 
            </li>        
        </ul>
    </div>
</div>

<hr class="tall" />

<div class="container">
    <div class="row">
        <div class="col-lg-12 p--content">
               $Content    
        </div>
    </div>
</div>
<div class="container">
    <div class="row">    
        <div class="col-lg-6">            
            <% if $LeftContent %>
                <Article class="lead" style="with=50%;">
                    {$LeftContent}    
                </Article>                         
            <% else %>
            <img class="img-responsive" src="https://via.placeholder.com/477" alt="layout styles" data-appear-animation="fadeInLeft">
            <% end_if %>
        </div>
        <div class="col-lg-6">
        <% if $Header %><h2><strong>{$Header}<strong></h2><% end_if %>
            <Article class="lead" style="with=50%;">
                {$Body}    
            </Article>              
        </div>
    </div>

    <hr class="tall" />

    <div class="row">
        <div class="col-lg-6">
            <% if $HeaderTwo %> <h2><strong>{$HeaderTwo}</strong></h2><% end_if %>
            <Article class="lead" style="with=50%;">
                {$BodyTwo}
            </Article>                
        </div>
        <div class="col-lg-6">
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
    <div class="row patient-info">
        <div class="col-lg-12">
            <h2>Patient <strong>Information</strong></h2>
            <ul class="portfolio-list sort-destination" data-sort-id="portfolio"> 
                <% loop CallToActions %>
                    <li class="col-lg-3 isotope-item websites">
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

<div class="container">				
    <div class="row">
        <hr class="tall" />
    </div>				
</div>

<div class="container">
    <div class="row center">
        <div class="col-lg-12">
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
        <div class="container">
            <div class="row">
                <div class="col-lg-6 txtwhite">
                    <h1 style="color:#ffff;">I am performing endoscopy at Waitemata Endoscopy.</h1>
                    <p class="lead">Celebrating 10 years of providing the most comprehensive private endoscopy services to the Shore, North and West.</p>
                    <p>Waitemata Endoscopy is a purpose built private endscopy suite offering access to a group of surgeons and
                    gastroenterologists working together at Southern Cross Hospital North Harbour. We offer diagnostic and therapeutic gastroscopy /
                    colonoscopy and accept direct GP referrals, either to the group, or to an individual specialist.
                    </p>   
                </div>

                <div class="col-lg-6">
                    <img src="img/waitematalogo.webp" class="img-responsive">
                </div>
            </div>
        </div>
</div>
<% include Footer %>