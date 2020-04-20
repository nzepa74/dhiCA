companyRegistration = (function () {
    "use strict";
    var form = $('#companyRegistrationFormId');
    var isSubmitted = false;


    function _baseURL() {
        return 'companyRegistration/';
    }

    function saveCompanyRegistration() {
        $('#btnSave').on('click', function () {
            form.validate({
                submitHandler: function (form) {
                    var url = _baseURL() + 'saveCompanyRegistration';
                    var data = $(form).serializeArray();
                    $.ajax({
                        url: url,
                        type: 'post',
                        data: data,
                        processData: true,
                        success: function (res) {
                            if (res.responseStatus == 1) {
                                successMsg(res.responseText);
                            } else {
                                warningMsg(res.responseText);
                            }
                        }
                        , error: function (res) {
                            errorMsg(res.responseText);
                        }
                    });
                }
            });
        });
    }

    return {
        saveCompanyRegistration: saveCompanyRegistration
    }
})
();
$(document).ready(
    function () {
        companyRegistration.saveCompanyRegistration();
    });
