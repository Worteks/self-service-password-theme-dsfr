(function() {

    $(document).on('checkpassword', function(event, context) {

        $('div.ppolicy li i.fa-check ').removeClass('fa-check').addClass('fr-icon-success-fill').addClass('fr-icon--sm');
    });

    $(document).on('checkpassword', function(event, context) {

        $('div.ppolicy li i.fa-times ').removeClass('fa-times').addClass('fr-icon-error-fill').addClass('fr-icon--sm');

    });

    $(document).on('checkpassword', function(event, context) {

        $('div.ppolicy li i.text-danger').removeClass('fr-icon-success-fill').addClass('fr-icon-error-fill');

    });

}).call(this);
