// Add here all your JS customizations


$(document).ready(function() {     
    // FAQ      
    $("section.toggle").on("click", function() {
        const elID = $(this).data("faqid");
        $(".id"+ elID+ " ul").toggle();
        $(".id"+ elID+ " p").toggle();
    });

    // Patient Info Page
    $('[data-toggle="tooltip"]').tooltip();   
});


 