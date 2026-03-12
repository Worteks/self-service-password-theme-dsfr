(function() {

    $(document).ready(function () {
        $('div.ppolicy li i.fa-check').parent('li').addClass('fr-label--info');
        $('div.ppolicy li i.fa-check').removeClass('fa-check text-success').addClass('fr-icon-info-fill fr-icon--sm');
        $('div.ppolicy li i.fa-times').parent('li').addClass('fr-label--info');
        $('div.ppolicy li i.fa-times').removeClass('fa-times text-danger').addClass('fr-icon-info-fill fr-icon--sm');
        $('div.ppolicy li i.fa-question-circle').parent('li').addClass('fr-label--info');
        $('div.ppolicy li i.fa-question-circle').removeClass('fa-question-circle text-secondary').addClass('fr-icon-info-fill fr-icon--sm');
    });

    $(document).on('checkpassword', function(event, context) {
        $('div.ppolicy li i.fa-check').parent('li').removeClass('fr-label--info fr-label--success fr-label--error').addClass('fr-label--success');
        $('div.ppolicy li i.fa-check').removeClass('fr-icon-info-fill fr-icon-success-fill fr-icon-error-fill fa-check').addClass('fr-icon-success-fill');
        $('div.ppolicy li i.fa-times').parent('li').removeClass('fr-label--info fr-label--success fr-label--error').addClass('fr-label--error');
        $('div.ppolicy li i.fa-times').removeClass('fr-icon-info-fill fr-icon-success-fill fr-icon-error-fill fa-times').addClass('fr-icon-error-fill');
        $('div.ppolicy li i.text-danger').parent('li').removeClass('fr-label--info fr-label--success fr-label--error').addClass('fr-label--error');
        $('div.ppolicy li i.text-danger').removeClass('fr-icon-success-fill fr-icon-success-fill fr-icon-error-fill text-danger').addClass('fr-icon-error-fill');
    });

}).call(this);
