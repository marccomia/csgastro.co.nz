// Add here all your JS customizations

// FAQ
  $(document).ready(function(){
      $("section.toggle").on("click", function() {
          var elID = $(this).data("faqid");
          console.log(elID);

          $(".id"+ elID+ " ul").toggle();
          $(".id"+ elID+ " p").toggle();
        });
    });

  // $( "section.toggle" ).on( "click", function() {
  //   console.log( $( this ).text() );
  // });

// Patient Info Page
  $(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();   
  });

