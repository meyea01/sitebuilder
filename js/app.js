$(document).ready(function() {
  var switched = false;
  var updateTables = function() {
    if (($(window).width() < 767) && !switched ){
      switched = true;
      $("table.responsive").each(function(i, element) {
        splitTable($(element));
      });
      return true;
    }
    else if (switched && ($(window).width() > 767)) {
      switched = false;
      $("table.responsive").each(function(i, element) {
        unsplitTable($(element));
      });
    }
  };
   
  $(window).load(updateTables);
  $(window).on("redraw",function(){switched=false;updateTables();}); // An event to listen for
  $(window).on("resize", updateTables);
   
   
   function splitTable(original)
   {
      original.wrap("<div class='table-wrapper' />");
      
      var copy = original.clone();
      copy.find("td:not(:first-child), th:not(:first-child)").css("display", "none");
      copy.removeClass("responsive");
      
      original.closest(".table-wrapper").append(copy);
      copy.wrap("<div class='pinned' />");
      original.wrap("<div class='scrollable' />");

    setCellHeights(original, copy);
   }
   
   function unsplitTable(original) {
    original.closest(".table-wrapper").find(".pinned").remove();
    original.unwrap();
    original.unwrap();
   }

  function setCellHeights(original, copy) {
    var tr = original.find('tr'),
        tr_copy = copy.find('tr'),
        heights = [];

    tr.each(function (index) {
      var self = $(this),
          tx = self.find('th, td');

      tx.each(function () {
        var height = $(this).outerHeight(true);
        heights[index] = heights[index] || 0;
        if (height > heights[index]) heights[index] = height;
      });

    });

    tr_copy.each(function (index) {
      $(this).height(heights[index]);
    });
  }

});

$(function() {
    $('.page-alert').hide();
    //Show alert
    $('button[data-toggle="page-alert"]').click(function(e) {
        e.preventDefault();
        var id = $(this).attr('data-toggle-id');
        var alert = $('#alert-' + id);
        var timeOut;
        alert.appendTo('.page-alerts');
        alert.slideDown();
        
        //Is autoclosing alert
        var delay = $(this).attr('data-delay');
        if(delay != undefined)
        {
            delay = parseInt(delay);
            clearTimeout(timeOut);
            timeOut = window.setTimeout(function() {
                    alert.slideUp();
                }, delay);
        }
    });
    
    //Close alert
    $('.page-alert .close').click(function(e) {
        e.preventDefault();
        $(this).closest('.page-alert').slideUp();
    });
    
    //Clear all
    $('.clear-page-alerts').click(function(e) {
        e.preventDefault();
        $('.page-alert').slideUp();
    });
});

$('#myTab a').click(function (e) {
  e.preventDefault()
  $(this).tab('show')
});

$('.bs-example-tooltips button').tooltip();

$('.bs-popover-example button').popover();

