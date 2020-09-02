@extends('layouts.app')

@section('content')
<div class="container">
    <h1 class="mb-6">Заказы</h1>
    @if (count($orders) == 0)
        <p>Вы ещё не заказывали товары у нас(</p>
    @else 
        <div class="table-responsive">
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">Номер заказа</th>
                    <th scope="col">Номер продукта</th>
                    <th scope="col">Количество</th>
                    <th scope="col">Итого</th>
                    <th scope="col">Адрес</th>
                    <th scope="col">Статус</th>
                </tr>
                </thead>
                <tbody>
                    @foreach ($orders as $order)                
                        <tr>
                            <th scope="row">{{ $order->order_id }}</th>
                            <td>{{ $order->product_id }}</td>
                            <td>{{ $order->quantity }}</td>
                            <td>{{ $order->amount }}</td>
                            <td>{{ $order->address }}</td>
                            @switch($order->status)
                                @case("open")
                                    <td>Заказ сделан на сайте, ожидает подтверждение менеджера</td>
                                    @break
                                @case("confirmed")
                                    <td>Заказ подтвержден, готовится к доставке</td>
                                    @break
                                @case("sent")
                                    <td>Заказ отправлен</td>
                                    @break
                                @case("delivered")
                                    <td>Заказ доставлен</td>
                                    @break
                                @case("canceled")
                                    <td>Заказ отменен</td>
                                    @break
                            @endswitch
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    @endif
</div>
@endsection
