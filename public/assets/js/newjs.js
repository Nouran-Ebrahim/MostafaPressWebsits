
function toast(type,title) {
    classes = type == 'success' ? 'fa-regular fa-circle-check text-success' : 'fa-solid fa-xmark text-danger';
    $('#liveToast i').removeClass().addClass(classes);
    $('#liveToast strong').html(title);
    var toastLiveExample = document.getElementById('liveToast');
    var toast = new bootstrap.Toast(toastLiveExample);
    toast.show();
}
