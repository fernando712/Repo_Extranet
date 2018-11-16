/*$("#tx-biog").keyup(function() {
  if ($("#tx-biog").val()!="") {
    $("#btn-sbio").removeAttr("disabled");
  }else {
    $("#btn-sbio").attr("disabled","true");
  }
});
*/
$("#btn-sbio").click(function(){
  if($(".interests").find(".custom-checkbox.checked").length > 0 && $("#tx-biog").val()!=""){
    console.log("FINE");
    $("#waitModal").modal("show");
    setTimeout(function(){
      $("#waitModal").modal("hide");
      $("#savedFile").modal("show");
    },1000);
  }else{
    if($(".interests").find(".custom-checkbox.checked").length == 0){
      console.log("ERRRROR");
      $("#errorFile").modal("show");
    }
  }
});
