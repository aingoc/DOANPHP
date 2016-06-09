$(document).ready(function() {
    $('#checkout-form').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            Ten: {
                message: 'The username is not valid',
                validators: {
                    notEmpty: {
                        message: 'The username is required and can\'t be empty'
                    },
                    stringLength: {
                        min: 6,
                        max: 30,
                        message: 'The username must be more than 6 and less than 30 characters long'
                    }
                }
            },
            username1: {
                message: 'The username is not valid',
                validators: {
                    notEmpty: {
                        message: 'The username is required and can\'t be empty'
                    },
                    stringLength: {
                        min: 6,
                        max: 30,
                        message: 'The username must be more than 6 and less than 30 characters long'
                    }
                }
            },

            DiaChi: {
                message: 'The username is not valid',
                validators: {
                    notEmpty: {
                        message: 'The username is required and cannot be empty'
                    }

                }
            },
            email: {
                validators: {
                    notEmpty: {
                        message: 'The password is required and cannot be empty'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/i,
                        message: 'The value is not a valid email address'
                    }
                }
            },
            SDT: {
                message: 'The phonenumber is not valid',
                validators: {
                    notEmpty: {
                        message: 'The phonenumber is required and cannot be empty'
                    },
                    stringLength: {
                        min: 8,
                        max: 11,
                        message: 'The phonenumber must be more than 6 and less than 30 characters long'
                    }
                }
            }
        }
    });
});
