$(document).ready(function(){
    $('#btn-grid').click(function() {
        $('#btn-grid').addClass('active');
        $('#btn-list').removeClass('active');
    });
    $('#btn-list').click(function() {
        $('#btn-list').addClass('active');
        $('#btn-grid').removeClass('active');
    });
});
