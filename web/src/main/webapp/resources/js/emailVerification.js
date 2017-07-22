function doAjax() {
            $.ajax({
                url: 'checkEmail',
                data: ({userEmail : $('#userEmail').val()}),
                success: function(data) {
                    $('#userEmailMess').html(data);
                }
            });
        }

function doAjaxTeacher() {
    $.ajax({
        url: 'checkEmail',
        data: ({userEmail : $('#teachEmail').val()}),
        success: function(data) {
            $('#teacherEmailMess').html(data);

        }
    });
}