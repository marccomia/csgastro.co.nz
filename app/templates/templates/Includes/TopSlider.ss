<header id="header">
    <div class="container">
        <div class="logo">
            <a href="index.html">
                <img alt="Porto" width="111" height="54" data-sticky-width="82" data-sticky-height="40" src="img/logo.png">
            </a>
        </div>				
    </div>
    <div class="navbar-collapse nav-main-collapse collapse">
        <div class="container">
            <ul class="social-icons">
                <li class="facebook"><a href="http://www.facebook.com/" target="_blank" title="Facebook">Facebook</a></li>
                <li class="twitter"><a href="http://www.twitter.com/" target="_blank" title="Twitter">Twitter</a></li>
                <li class="linkedin"><a href="http://www.linkedin.com/" target="_blank" title="Linkedin">Linkedin</a></li>
            </ul>
            <nav class="nav-main mega-menu">
                <ul class="nav nav-pills nav-main" id="mainMenu">
                    <% loop $Menu(1) %>
                    <li><a class="$LinkingMode" href="$Link" title="Go to the $Title page">$MenuTitle</a></li>
                    <% end_loop %>   
                </ul>
            </nav>
        </div>
    </div>
</header>