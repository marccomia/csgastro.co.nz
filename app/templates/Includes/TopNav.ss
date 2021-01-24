<header id="header" class="topheader">
    <div class="container">
        <div class="logo">
            <a href="$AbosulteURL">
                <img alt="Porto" width="160" height="60" data-sticky-width="120" data-sticky-height="40" src="img/csgastro.png">
            </a>
        </div>				
    </div>
    <nav class="hidden-lg">
        <ul class="nav nav-pills nav-top">
            <% loop $Menu(1) %>
            <li>
                <a href="$Link" class="$LinkingMode"><i class="fa fa-angle-right"></i>$MenuTitle</a>
            </li>
            <% end_loop %>       
        </ul>
    </nav>
    <button class="btn btn-responsive-nav btn-inverse" data-toggle="collapse" data-target=".nav-main-collapse">
        <i class="fa fa-bars"></i>
    </button>
    <div class="navbar-collapse nav-main-collapse collapse">
        <div class="container">
            
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