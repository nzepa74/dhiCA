companyRegistration = (function () {
    "use strict";
    var form = $('#companyRegistrationFormId');
    var isSubmitted = false;


    function _baseURL() {
        return 'companyRegistration/';
    }

    function saveCompanyRegistration() {
        $('#btnSave').on('click', function () {

            $('#quickForm').validate({
                rules: {
                    email: {
                        required: true,
                        email: true
                    },
                    password: {
                        required: true,
                        minlength: 5
                    },
                    terms: {
                        required: true
                    }
                },
                messages: {
                    email: {
                        required: "Please enter a email address",
                        email: "Please enter a vaild email address"
                    },
                    password: {
                        required: "Please provide a password",
                        minlength: "Your password must be at least 5 characters long"
                    },
                    terms: "Please accept our terms"
                },
                errorElement: 'span',
                errorPlacement: function (error, element) {
                    error.addClass('invalid-feedback');
                    element.closest('.row').append(error);
                },
                highlight: function (element, errorClass, validClass) {
                    $(element).addClass('is-invalid');
                },
                unhighlight: function (element, errorClass, validClass) {
                    $(element).removeClass('is-invalid');
                }
            });

        $.validator.setDefaults({
            submitHandler: function () {
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
