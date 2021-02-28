<footer id="footer" class="color">
    <div class="container">
        <div class="row">
            <div class="footer-ribbon">
                <span>Get in Touch</span>
            </div>
            <div class="col-md-6">
                <div class="newsletter">
                    <img  class="img-responsive" alt="Consult" src="img/WEDrs-4044.jpg" />
                </div>
            </div>
                        
            <div class="col-md-6">
                <div class="contact-details">                 
                    <% loop $ContactMe %>                        
                        $GetInTouchContent
                    <% end_loop %>
                
                </div>
            </div>
        </div>
    </div>
    <div class="footer-copyright">
        <div class="container">
            <div class="row">
                <div class="col-md-1 col-xs-3">
                    <a href="$AbosulteURL" class="logo">
                        <img alt="Porto Website Template" class="img-responsive" src="img/csgastro-footer-logo.png">
                    </a>
                </div>
                <div class="col-md-7 col-xs-5">
                    <p>© Copyright {$Now.Year}. All Rights Reserved</p>
                </div>
                <div class="col-md-4 col-xs-4">
                    <nav id="sub-menu">
                        <ul>
                            <li><a href="$AbosulteURL/faq">FAQ's</a></li>
                            <li><a href="$AbosulteURL/contact-us">Contact</a></li>
                            <li><a href="$AbosulteURL/sitemap.xml">Site Map</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</footer>