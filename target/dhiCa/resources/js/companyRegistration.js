companyRegistration = (function () {
    "use strict";
    var form = $('#companyRegistrationFormId');
    var isSubmitted = false;


    function _baseURL() {
        return 'companyRegistration/';
    }

    function saveCompanyRegistration() {
        $('#btnSave').on('click', function () {

            $.validator.setDefaults({
                submitHandler: function () {
                    var url = _baseURL() + 'saveCompanyRegistration';
                    var data = $(form).serializeArray();

                    isSubmitted = true;
                    $('#btnSave').attr('disabled', true);

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
                        }, complete: function () {
                            isSubmitted = false;
                            $('#btnSave').attr('disabled', false);
                        }
                    });
                }
            });

            form.validate({
                rules: {
                    companyId: {
                        required: true
                    },
                    companyName: {
                        required: true
                    }
                },
                messages: {
                    companyId: {
                        required: "Please enter a email address"
                    },
                    companyName: {
                        required: "Please provide a password"
                    }
                },
                errorElement: 'span',
                errorPlacement: function (error, element) {
                    error.addClass('invalid-feedback');
                    element.closest('.col-sm-10').append(error);
                },
                highlight: function (element, errorClass, validClass) {
                    $(element).addClass('is-invalid');
                },
                unhighlight: function (element, errorClass, validClass) {
                    $(element).removeClass('is-invalid');
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
