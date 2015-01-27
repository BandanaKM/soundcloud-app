$(document).ready(function() {
  var genreContainer = $('#genre_filter');
  if(genreContainer.length > 0) {
    genreContainer.find('select').on('change', function(){
      genreContainer.submit();
    });
  }
});