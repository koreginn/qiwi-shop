<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
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
        $order->status_payment = 'WAITING';
        $order->bill_id = $request->bill_id;
        $order->product_id = $request->product_id;
        $order->quantity = $request->quantity;
        $order->amount = $request->amount;
        $order->address = $request->address;
        $order->status = 'open';

        $order->save();

        return response()->json([], 200);
    }

    public function updateStatusPayment(Request $request) {
        $secret_key = setting('site.secret_key');

        $head = getallheaders();

        $sha256_hash_header = $head['X-Api-Signature-SHA256'];;
        
        $amount_currency = $request->input('bill.amount.currency');;
        $amount_value = $request->input('bill.amount.value');
        $billId = $request->input('bill.billId');
        $siteId = $request->input('bill.siteId');
        $status_value = $request->input('bill.status.value');
    
        $invoice_parameters = $amount_currency . '|' . $amount_value . '|' . $billId . '|' . $siteId . '|' . $status_value;
    
        Log::info($invoice_parameters);
        
        $sha256_hash = hash_hmac('sha256', $invoice_parameters, $secret_key);

        if ($sha256_hash_header == $sha256_hash && !empty($sha256_hash_header)) {
            
            $order = Order::where('bill_id', '=', $billId)->get();

            $order = Order::find($order[0]->order_id);
    
            $order->status_payment = $status_value;
    
            $order->save();
    
            return response()->json(['error' => '0'], 200);
        } else {
            return response()->json([], 404);
        }
    }
}
