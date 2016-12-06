$(document).ready(function(){
  $.fn.datepicker.dates['fr'] = {
      days: ["Dimanche", "Lundi", "Mardi", "Mercredi", "Jeudi", "Vendredi", "Samedi"],
      daysShort: ["Dim", "Lun", "Mar", "Mer", "Jeu", "Ven", "Sam"],
      daysMin: ["Di", "L", "Ma", "Me", "J", "V", "S"],
      months: ["Janvier", "Fevrier", "Mars", "Avril", "Mai", "Juin", "Juillet", "Aout", "Septembre", "Octobre", "Novembre", "Decembre"],
      monthsShort: ["Jan", "Fev", "Mar", "Avr", "Mai", "Jui", "Juil", "Aou", "Sep", "Oct", "Nov", "Dec"],
      today: "Aujourd'hui",
      clear: "Effacer",
      format: "mm/dd/yyyy",
      titleFormat: "MM yyyy", /* Leverages same syntax as 'format' */
      weekStart: 0
  };
  $('.datepicker').datepicker({
    format: 'dd/mm/yyyy',
    weekStart: 1,
    language: 'fr'
  });
})
