$(document).ready(function() {
  $("#plant").hover(
    function(event) {
      $('#central').css({"background": "red"});
    },
    function(event) {
      $('#central').css({"background": "blue"});
    }
  );
});

$(document).ready(function() {
  $("#offer").hover(
    function(event) {
      $('#central').css({"background": "green"});
    },
    function(event) {
      $('#central').css({"background": "blue"});
    }
  );
});

$(document).ready(function() {
  $("#grow").hover(
    function(event) {
      $('#central').css({"background": "yellow"});
    },
    function(event) {
      $('#central').css({"background": "blue"});
    }
  );
});

$(document).ready(function() {
  $("#share").hover(
    function(event) {
      $('#central').css({"background": "grey"});
    },
    function(event) {
      $('#central').css({"background": "blue"});
    }
  );
});