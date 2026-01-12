(function() {

    $(document).ready(function () {
        $('div.ppolicy li i.fa-check ').removeClass('fa-check').removeClass('text-success').addClass('fr-icon-info-fill').addClass('fr-icon--sm').addClass('fr-label--info');
        $('div.ppolicy li i.fa-times ').removeClass('fa-times').removeClass('text-danger').addClass('fr-icon-info-fill').addClass('fr-icon--sm').addClass('fr-label--info');
        $('div.ppolicy li i.fa-question-circle ').removeClass('fa-question-circle').removeClass('text-secondary').addClass('fr-icon-info-fill').addClass('fr-icon--sm').addClass('fr-label--info');
    });

    $(document).on('checkpassword', function(event, context) {

        $('div.ppolicy li i.fa-check ').removeClass('fr-icon-info-fill').removeClass('fa-check').addClass('fr-icon-success-fill');
    });

    $(document).on('checkpassword', function(event, context) {

        $('div.ppolicy li i.fa-times ').removeClass('fr-icon-info-fill').removeClass('fa-times').addClass('fr-icon-error-fill');

    });

    $(document).on('checkpassword', function(event, context) {

        $('div.ppolicy li i.text-danger').removeClass('fr-icon-success-fill').addClass('fr-icon-error-fill');

    });

}).call(this);
