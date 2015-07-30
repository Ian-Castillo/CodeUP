

function buttonclick()
{
$("body").append('<div class="dialog">hello!!</div>');
}
$("hello").remove('')

function progressBarTemplate(percent) {
    return '<div class="progress-bar" role="progressbar" aria-valuenow="' + percent + '" aria-valuemin="10" aria-valuemax="100"  style="min-width: ' + percent + '%;"> '+ percent + '%</div>'
}

$(function () {
    $('.progress').each(function (index, element) {
        var renderedProgressBar = progressBarTemplate($(element).data('percent'));
        $(element).html(renderedProgressBar);
    });
})