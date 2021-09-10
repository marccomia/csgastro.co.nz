
<section class="page-top">
   <div class="container">
      <div class="row">
         <div class="col-md-12">
            <ul class="breadcrumb">
               <li><a href="$AbosulteURL">Home</a></li>
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
      <div class="col-md-3 col-xs-12 hidden-xs">
         <aside class="sidebar">               
            <% include Sidebar %>        
         </aside>
      </div>
      <div class="col-md-9 col-xs-12">
         <div class="blog-posts single-post">
            <article class="post post-large blog-single-post">
               <div class="post-content">
                  <h2><a href="blog-post.html">$Authortxt</a></h2>
                  <div class="post-meta">                        
                     <span>
                        <i class="fa fa-tag"></i> $CategoriesList
                     </span>                   
                  </div>
                  <p class="lead">{$Content}</p>

                  <div class="post-block post-share">
                     <h3><i class="fa fa-share"></i>Share this post</h3>

                     <!-- AddThis Button BEGIN -->
                     <div class="addthis_toolbox addthis_default_style ">
                        <a class="addthis_button_facebook_like" fb:like:layout="button_count"></a>
                        <a class="addthis_button_tweet"></a>
                        <a class="addthis_button_pinterest_pinit"></a>
                        <a class="addthis_counter addthis_pill_style"></a>
                     </div>
                     <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=xa-50faf75173aadc53"></script>
                     <!-- AddThis Button END -->

                  </div>
               </div>
            </article>
         </div>
      </div>
   </div>
</div>

<% include Footer %>