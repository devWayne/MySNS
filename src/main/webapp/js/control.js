
function closePage(){
	  window.opener=null;


    	window.open('','_self');
	    window.close(); 

}
$(function(){
	$("header").headroom({
  "tolerance": 5,
  "offset": 205,
  "classes": {
    "initial": "animated",
    "pinned": "slideDown",
    "unpinned": "slideUp"
  }
});

// to destroy
$("#header").headroom("destroy");
});