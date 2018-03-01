$(document).ready(function() {
  
  $('#show').click(function(){
    $('#customer_content').show();
  });

  $('#hide').click(function(){
    $('#customer_content').hide();
  });

  $('#green_button').click(function(){
    $('.marker').removeClass('yellow');
    $('.marker').addClass('green');
  });

  $('#yellow_button').click(function(){
    $('.marker').removeClass('green');
    $('.marker').addClass('yellow');
  });

  $('#selected_country').click(function(){
    $('.clicked_country').text("India");
  });

  $('#btn').click(function(){
    var a = $("#txt").val();
    $('.clicked_country').text(a);
  });

  $( function() {
  $('#butn1').click( function() {
    $('.clicked_country').toggleClass("brown");  
  } );
} );


  $('#txt1, #txt2, #txt3, #txt4, #txt5 , #txtbx , #txtbox1 , #txtbox2 , #txtbox3 , #txtbox4 , #txtbox5').bind('keyup paste', function(){
        this.value = this.value.replace(/[^0-9]/g, '');
  });

  $( "txt1, #txt2, #txt3, #txt4" ).change(function() {
    $("[id*=txt5]").val(+$("#txt1").val() + +$("#txt2").val() + +$("#txt3").val() + +$("#txt4").val());
    });
  
  $( '#chk1' ).click(function () {
    if ($(this).prop('checked')) {
      $('.green').show();
    }
    else {
      $('.green').hide();
    }
  });
  $( '#chk2' ).click(function () {
    if ($(this).prop('checked')) {
      $('.yellow').show();
    }
    else {
      $('.yellow').hide();
    }
  });
  $( '#chk3' ).click(function () {
    if ($(this).prop('checked')) {
      $('.black').show();
     }
    else {
      $('.black').hide();
    }
  });

  $( '#chkbx1, #chkbx2, #chkbx3' ).click(function () {
    if ($(this).prop('checked')) {
    $('#txtbx').val(  +$('#txtbx').val() + 1  )  
    }
    else {
    $('#txtbx').val(+$('#txtbx').val() - 1)
    }
  });


  $('.color').click(function(){
    $("select option").prop("selected", false);
  
  });


  $('#color').change(function(){
    if ($(this).val() === 'Green') {
      $('.d').addClass('green');
      $('.d').removeClass('yellow');
      $('.d').removeClass('red');
    } else if ($(this).val() === 'Red') {
      $('.d').addClass('red');
      $('.d').removeClass('yellow');
      $('.d').removeClass('green');
    } else if ($(this).val() === 'Yellow') {
      $('.d').addClass('yellow');
      $('.d').removeClass('green');
      $('.d').removeClass('red');
    } else {
      $('.d').removeClass('yellow');
      $('.d').removeClass('green');
      $('.d').removeClass('red');
    }
  });

  $('#country').change(function(){
    if ($(this).val() === 'China') {
      $('#txtbox').val('China');
    } else if ($(this).val() === 'United State') {
      $('#txtbox').val('United State');
    } else if ($(this).val() === 'Malaysia') {
      $('#txtbox').val('Malaysia');
    } else {
      $('#txtbox').val(' ');
    }
  });
   $( "txtbox1, #txtbox2, #txtbox3, #txtbox4" ).click(function() {
    $("[id*=txtbox5]").val(+$("#txtbox1").val() + +$("#txtbox2").val() + +$("#txtbox3").val() + +$("#txtbox4").val());
    });
   $( '#chkbox1, #chkbox2, #chkbox3' ).click(function () {
    if ($(this).prop('checked')) {
      $('#txtbox4').val(+$('#txtbox4').val() + 1)  
    }
    else {
      $('#txtbox4').val(+$('#txtbox4').val() - 1)
    }
      $("[id*=txtbox5]").val(+$("#txtbox1").val() + +$("#txtbox2").val() + +$("#txtbox3").val() + +$("#txtbox4").val());
  });
  
  // $("#country").change(function () {
  //   alert($('#country').val());
  // });
   



  // $('#country').val();
  // $("#country").val("China");
  // $("#country option[value='United State']").attr("disabled", false);
     
// $("#txt1, #txt2").bind("click", function(){
//      $("[id*=txt3]").val(parseInt($("[id*=txt1]").val()) + parseInt($("[id*=txt2]").val()));
// });

  
  // $("#btn1").click(function(){
  //               var val1=parseInt($("#Txt1").val());
  //               var val2=parseInt($("#Txt2").val());
                
  //               $("#Txt3").val(val1 + val2);
  //           });



  // $('#selected_country').click(function(){
  //  $(".2").css("background-color","red");
  //   $( "td:eq( 2 )" ).css( "color", "red" );
   
 // $(function () { 
 //  var textBox1 = $('input:text[id$=txt1]').keyup(foo); 
 //  var textBox2 = $('input:text[id$=txt2]').keyup(foo); 
 //  function foo() 
 //  { var value1 = textBox1.val(); 
 //    var value2 = textBox2.val(); 
 //    var sum = add(value1, value2); $('input:text[id$=txt3]').val(sum); } 
 //    function add() 
 //    { var sum = 0; for (var i = 0, j = arguments.length; i < j; i++) 
 //      { if (IsNumeric(arguments[i])) 
 //        { sum += parseFloat(arguments[i]); } } return sum; } 
 //        function IsNumeric(input) { return (input - 0) == input && input.length > 0; } });





})
