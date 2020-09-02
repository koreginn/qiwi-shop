document.querySelectorAll('.product_button').forEach(button => {

    const link = window.location;

    $(button).click(handler);

    function handler() {
        let { dataset } = this;

        document.location.href = `${link.origin}/payment?product_id=${dataset.id}`;
    }
});