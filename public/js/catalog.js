document.querySelectorAll('.item_sorting_btn').forEach(elem => {
    $(elem).click(function () {
        const link = window.location;

        document.location.href = `${link.origin}${$(this).data('slug')}`;
    });
});