<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use App\Order;

class OrderController extends Controller {

    public function addOrder(Request $request) {

        $validator = Validator::make($request->all(), [
            'bill_id' => 'required',
            'product_id' => 'required',
            'quantity' => 'required',
            'amount' => 'required',
            'address' => 'required',
        ], [
            'bill_id.required' => 'Укажите номер проверки платежа',
            'product_id.required' => 'Укажите номер продукта',
            'quantity.required' => 'Укажите количество товара',
            'amount.required' => 'Укажите итоговую сумму',
            'address.required' => 'Укажите адресс'
        ]);

        if ($validator->fails()) return response()->json($validator->messages(), 422);
        
        $order = new Order;

        $order->user_id = $request->user_id;
        $order->bill_id = $request->bill_id;
        $order->product_id = $request->product_id;
        $order->quantity = $request->quantity;
        $order->amount = $request->amount;
        $order->address = $request->address;
        $order->status = 'open';

        $order->save();

        return response()->json([], 200);
    }
}
