// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootsy
//= require turbolinks
//= require_tree





/*function rotateContainer () {
  rot = (rot + 1)%360;
        $(".particles").css({
        transform: "rotateX("+(-rot)+"deg) "});
    requestAnimationFrame(rotateContainer);
}
requestAnimationFrame(rotateContainer);*/



// function doFirst(){
//   var x = document.getElementById('Canvas')
//   canvas = x.getContext('2d');

//   var pic = new Image();
//   pic.src="images/tshirt.png";  
//   pic.addEventListener("load", function(){canvas.drawImage(pic,0,0)}, false);
//   }
// }
// window.addEventListener("load", doFirst, false);

      // function drawImage(imageObj) {
      //   var canvas = document.getElementById('myCanvas');
      //   var context = canvas.getContext('2d');
      //   var imageX = 69;
      //   var imageY = 50;
      //   var imageWidth = imageObj.width;
      //   var imageHeight = imageObj.height;

      //   context.drawImage(imageObj, imageX, imageY);

      //   var imageData = context.getImageData(imageX, imageY, imageWidth, imageHeight);
      //   var data = imageData.data;

      //   // iterate over all pixels
      //   for(var i = 0, n = data.length; i < n; i += 4) {
      //     var red = data[i];
      //     var green = data[i + 1];
      //     var blue = data[i + 2];
      //     var alpha = data[i + 3];
      //   }

      //   // pick out pixel data from x, y coordinate
      //   var x = 20;
      //   var y = 20;
      //   var red = data[((imageWidth * y) + x) * 4];
      //   var green = data[((imageWidth * y) + x) * 4 + 1];
      //   var blue = data[((imageWidth * y) + x) * 4 + 2];
      //   var alpha = data[((imageWidth * y) + x) * 4 + 3];
        
      //   // iterate over all pixels based on x and y coordinates
      //   for(var y = 0; y < imageHeight; y++) {
      //     // loop through each column
      //     for(var x = 0; x < imageWidth; x++) {
      //       var red = data[((imageWidth * y) + x) * 4];
      //       var green = data[((imageWidth * y) + x) * 4 + 1];
      //       var blue = data[((imageWidth * y) + x) * 4 + 2];
      //       var alpha = data[((imageWidth * y) + x) * 4 + 3];
      //     }
      //   }
      // }
      // var imageObj = new Image();
      // imageObj.onload = function() {
      //   drawImage(this);
      // };
      // imageObj.src = 'http://www.html5canvastutorials.com/demos/assets/darth-vader.jpg';

