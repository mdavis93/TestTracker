// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready( function() {
    $('.table.course_exam_table').DataTable( {
        "pageLength": 25,
        "order": [[1, "asc"]]
    });

    $("#missing_makeup_info_panel").on("click", function() {
        var $course_exam_modal = $('#course_exam_modal');

        $course_exam_modal.find('h4').html(
            "<i class='fa fa-file-text-o'></i>&emsp;Add/Edit Exam"
        );

        $('.modal-body').html('<strong><em>TODO</em></strong>:<br> AJAX Request to display only students in this class that have incomplete coursework.  Result badges <strong>ABSENT</strong> and <strong>RETAKE</strong> are considered as bing incomplete since the student still has a remaining attempt at passing the exam.');

        $course_exam_modal.modal('show');
    });
});