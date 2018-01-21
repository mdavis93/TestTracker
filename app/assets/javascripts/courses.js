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

        $('.modal-body').html('<%= j render partial: "/partials/exams/exam_table", locals: { course: @course, exams: @course.exams, makeup: true } %>'.html_safe)

        $course_exam_modal.modal('show');
    });
});