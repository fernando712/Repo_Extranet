$("#btn-realizado").click(
  function(){
    $("#card-noevaluar").slideUp("slow",function(){
      $("#card-evaluar").slideDown("slow");
    });
  }
);

$("#btn-nrealizado").click(
  function(){
    $("#card-evaluar").slideUp("slow",function(){
      $("#card-noevaluar").slideDown("slow");
    });
  }
);

$(".e-star").hover(function(){
  tparent = $(this).attr("data-parent");
  $allstars = $("#"+tparent+" > .e-star");
  indx = $allstars.index(this);
  $allstars.slice(0,indx+1).addClass("blu-star");
  $allstars.slice(indx+1).removeClass("blu-star");
},function(){
  curr_eval = $("#"+tparent).attr("data-eval");
  if(curr_eval==""){
    $allstars.removeClass("blu-star");
  }else{
    $allstars.slice(0,parseInt(curr_eval)).addClass("blu-star");
    $allstars.slice(parseInt(curr_eval)).removeClass("blu-star");
  }
})

$(".e-star").click(function(){
  $("#"+tparent).attr("data-eval",""+(indx+1));
  $("#"+tparent).addClass("evaluated");
  if ($(".e-stars.evaluated").length == $(".e-stars").length) {
    $("#btn-send-eval").removeAttr("disabled");
  }
});

$("#tx-noeval").keyup(function() {
  if ($("#tx-noeval").val()!="") {
    $("#btn-sendnoeval").removeAttr("disabled");
  }else {
    $("#btn-sendnoeval").attr("disabled","true");
  }
});

var sendData = function(thenfn){
  $("#waitModal").modal("show");
  setTimeout(function(){
    $("#waitModal").modal("hide");
    $("#savedFile").modal("show");
    $("#card-evaluar").remove();
    $("#card-noevaluar").remove();
    $("#btn-realizado").remove();
    $("#btn-nrealizado").remove();
    $("#td-confirm").text("Gracias por confirmar");
  },1000);
}

$("#btn-send-eval, #btn-sendnoeval").click(sendData);
