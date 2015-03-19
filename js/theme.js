$(document).ready(function() {
    // Any plugin buttons using pwg-icon class should also use glyphicon class for correct display
    //$('.pwg-icon').addClass('glyphicon');

    // Grid view button click
    $('#btn-grid').click(function() {
        $.cookie('view', 'grid');
        $('#btn-grid').addClass('active');
        $('#btn-list').removeClass('active');
        $('#content')
            .removeClass('content-list')
            .addClass('content-grid')
            .height('auto')
            .find('.col-outer').each(function() {
                $(this).removeClass('col-lg-12 col-md-12 col-sm-12 col-xs-12')
                    .addClass($(this).data('grid-classes'))
                    .one(
                        'webkitTransitionEnd',
                        function () {
                            $('#content').find('.col-inner').equalHeights();
                        })
            })
            .find('.col-inner')
                .height('auto');
    });

    // List view button click
    $('#btn-list').click(function() {
        $.cookie('view', 'list');
        $('#btn-list').addClass('active');
        $('#btn-grid').removeClass('active');
        $('#content')
            .removeClass('content-grid')
            .addClass('content-list')
            .height('auto')
            .find('.col-outer').each(function() {
                $(this).removeClass($(this).data('grid-classes'))
                    .addClass('col-lg-12 col-md-12 col-sm-12 col-xs-12')
                    .one(
                    'webkitTransitionEnd',
                    function () {
                        $('#content').find('.col-inner').equalHeights();
                    })
            })
            .find('.col-inner')
                .height('auto');
    });

});
