// app/javascript/packs/products_form.js

import moment from 'moment';

document.addEventListener('DOMContentLoaded', function() {
  const datepickers = document.querySelectorAll('.datepicker');

  datepickers.forEach(function(datepicker) {
    flatpickr(datepicker, {
      dateFormat: 'Y-m-d',
      defaultDate: datepicker.value ? moment(datepicker.value).toDate() : null
    });
  });
});
