// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready( function() {
    $('.table.course_exam_table').DataTable( {
        "pageLength": 25,
        "order": [[1, "asc"]]
    });
});