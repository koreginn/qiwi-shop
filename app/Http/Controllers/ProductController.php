<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;

class ProductController extends Controller {

    public function getAllProducts(Request $request) {

        return view('catalog', [
            "products" => Product::simplePaginate(6)
        ]);
    }

    public function getAllProductsSortPrice(Request $request) {

        return view('catalog', [
            "products" => Product::orderBy('price')->simplePaginate(6)
        ]);
    }

    public function getAllProductsSortName(Request $request) {

        return view('catalog', [
            "products" => Product::orderBy('name')->simplePaginate(6)
        ]);
    }

    public function getLatestProducts() {

        return view('welcome', [
            "products" => Product::latest()->limit(6)->get()
        ]);
    }
}
