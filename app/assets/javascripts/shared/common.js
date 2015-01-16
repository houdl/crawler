$(function(){
  /**$(".datepicker").datepicker({ 
    format: "yyyy-mm-dd",
    autoclose: true
  });**/

  $(".pickerdate").datetimepicker({
    lang: 'ch',
    format: 'Y-m-d',
		formatDate:	'Y-m-d',
		timepicker:false,
		closeOnDateSelect:true
  });

    $(".pickermonth").datetimepicker({
    lang: 'ch',
    format: 'Y-m',
    formatDate: 'Y-m',
    timepicker:false,
    closeOnDateSelect:true
  });

  $(".pickerdatetime").datetimepicker({
    lang: 'ch'
  });

  $("input.pi").on('focus', function(){
    $(this).numeric({ decimal: false, negative: false });
  });

  $("input.pn").on('focus', function(){
    $(this).numeric({ negative: false });
  });

 });
