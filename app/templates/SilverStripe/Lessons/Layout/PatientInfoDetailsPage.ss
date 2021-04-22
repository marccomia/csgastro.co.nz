<% include TopBreadcrumbs %>

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
               <div class="post--content">
                  <h2><a href="blog-post.html">$Authortxt</a></h2>
                  <div class="post-meta">                        
                     <span>
                        <i class="fa fa-tag"></i> $CategoriesList
                     </span>                   
                  </div>
                  <p class="lead">{$Content}</p>
               </div>
            </article>
         </div>
      </div>
   </div>
</div>

<% include Footer %>