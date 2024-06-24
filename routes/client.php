<?php

use App\Http\Controllers\Client\AddressController;
use App\Http\Controllers\Client\AuthController;
use App\Http\Controllers\Client\HomeController;
use App\Http\Controllers\Client\ProfileController;
use App\Http\Controllers\Payment\TapController;
use App\Http\Middleware\CheckAuth;
use App\Http\Middleware\ForceSSL;
use App\Http\Middleware\Localization;
use Illuminate\Support\Facades\Route;

Route::group(['as' => 'client.', 'middleware' => [Localization::class, ForceSSL::class]], function () {

    Route::get('/', [HomeController::class, 'home'])->name('home');
    Route::get('services', [HomeController::class, 'services'])->name('services');
    Route::get('serviceGallery/{id}', [HomeController::class, 'serviceGallery'])->name('serviceGallery');

    Route::any('shop/{category_id?}', [HomeController::class, 'shop'])->name('shop');
    Route::any('search', [HomeController::class, 'search'])->name('search');

    Route::get('product/{id}', [HomeController::class, 'product'])->name('product');
    Route::get('success/{id}', [HomeController::class, 'success'])->name('success');

    Route::get('about', [HomeController::class, 'about'])->name('about');
    Route::view('terms', 'Client.terms')->name('terms');
    Route::view('product_care', 'Client.product_care')->name('product_care');
    Route::view('privacy', 'Client.privacy')->name('privacy');
    Route::view('our_story', 'Client.our_story')->name('our_story');

    Route::POST('contact', [HomeController::class, 'contact'])->name('contact');
    Route::view('contact', 'Client.contact')->name('contact');

    Route::group(['middleware' => ['guest:client']], function () {
        Route::view('/login', 'Client.login')->name('login');
        Route::POST('/login', [AuthController::class, 'login'])->name('login');

        Route::view('/register', 'Client.register')->name('register');
        Route::POST('/register', [AuthController::class, 'register'])->name('register');

        Route::view('/forget', 'Client.forget')->name('forget');
        Route::POST('/forget', [AuthController::class, 'forget'])->name('forget');
    });

    Route::group(['middleware' => [CheckAuth::class]], function () {
        Route::any('toggle-fav', [HomeController::class, 'ToggleFav'])->name('toggle-fav');
        Route::any('washList', [HomeController::class, 'washList'])->name('washList');
        Route::get('profile', [ProfileController::class, 'profile'])->name('profile');
        Route::view('/edit-profile', 'Client.edit-profile')->name('edit-profile');
        Route::POST('/profile', [ProfileController::class, 'update'])->name('profile');

        Route::resource('/address', AddressController::class);

        Route::any('/logout', [AuthController::class, 'logout'])->name('logout');

        Route::POST('add-to-cart/{product_id}', [HomeController::class, 'addToCart'])->name('addToCart');
        Route::GET('shoping-cart', [HomeController::class, 'cart'])->name('cart');

        Route::any('check-out/{delivery_id?}', [HomeController::class, 'confirm'])->name('confirm');
        Route::POST('place-order/{delivery_id}', [HomeController::class, 'submit'])->name('submit');

        Route::POST('cart-delete', [HomeController::class, 'deleteitem'])->name('deleteitem');
        Route::POST('cart-plus', [HomeController::class, 'plus'])->name('plus');
        Route::POST('cart-minus', [HomeController::class, 'minus'])->name('minus');

    });

    Route::group(['prefix' => 'payment', 'as' => 'payment.'], function () {
        Route::group(['prefix' => 'tap', 'as' => 'tap.'], function () {
            Route::any('init', [TapController::class, 'init'])->name('init'); // client.payment.tap.init
            Route::any('response', [TapController::class, 'response'])->name('response'); // client.payment.tap.response
        });
    });
});
