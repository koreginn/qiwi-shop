<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Product;
use Qiwi\Api\BillPayments;

class PaymentController extends Controller {

    public function getPaymentProduct(Request $request) {

        $product = Product::find($request->product_id);
        $user = Auth::user();
        $publicKey = setting('site.p2p_key');
        $billPayments = new BillPayments($publicKey);
        $billId = rand(5, 250);

        $params = [
            'publicKey' => $publicKey,
            'amount' => $product->price,
            'billId' => $billId,
            'comment' => 'Оплата товара '.$product->name,
        ];

        $link = $billPayments->createPaymentForm($params);

        if (Auth::check()) {
            return view('checkout', [
                "product" => $product,
                "link" => $link,
                "billId" => $billId
            ]);
        } else {
            return view('auth.login');
        }
    }
}
