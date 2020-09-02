
$('.checkout_button').click(function (){
    event.preventDefault();

	let address = $('#checkout_address').val();
	let wayPayment = $('#radio_1').is(":checked");
	let link = $(this).find('a').attr('href');
	let product_id = parseInt($('.product_number').text());
	let quantity = parseInt($('.product_num').text());
	let billId = $(this).find('a').data('bill');
	let amount = $('.product_total').text().split(' ');
	let userId = $(this).find('a').data('id');
	amount = parseFloat(amount[1]);

    if (address == "") {
        alert('Вы не указали адрес!');
        return;
	};

	if (!wayPayment) {
		alert('Вы не указали способ оплаты!');
        return;
	}

	$.ajax({
		url: 'https://shop.mywonders.ru/api/add-order',
		method: 'POST',
		data: {
			user_id: userId,
			bill_id: billId,
			product_id: product_id,
			quantity: quantity,
			amount: amount,
			address: address
		},
		success: function() {
			document.location.href = link;
		}
	});
});