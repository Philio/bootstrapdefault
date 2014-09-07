$(document).ready(function() {
    // Any plugin buttons using pwg-icon class should also use glyphicon class for correct display
    //$('.pwg-icon').addClass('glyphicon');

    // Grid view button click
    $('#btn-grid').click(function() {
        $('#btn-grid').addClass('active');
        $('#btn-list').removeClass('active');
        $('#content')
            .removeClass('content-list')
            .addClass('content-grid')
            .height('auto')
            .find('.col-outer')
                .removeClass('col-lg-12')
                .addClass('col-lg-3 col-md-4 col-sm-6 col-xs-12')
                .one(
                    'webkitTransitionEnd',
                    function() {
                        $('#content').find('.col-inner').equalHeights();
                    })
            .find('.col-inner')
                .height('auto');
    });

    // List view button click
    $('#btn-list').click(function() {
        $('#btn-list').addClass('active');
        $('#btn-grid').removeClass('active');
        $('#content')
            .removeClass('content-grid')
            .addClass('content-list')
            .height('auto')
            .find('.col-outer')
                .removeClass('col-lg-3 col-md-4 col-sm-6 col-xs-12')
                .addClass('col-lg-12')
                .one(
                    'webkitTransitionEnd',
                    function() {
                        $('#content').find('.col-inner').equalHeights();
                    })
            .find('.col-inner')
                .height('auto');
    });
});
