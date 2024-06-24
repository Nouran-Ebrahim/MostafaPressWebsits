<?php

use App\Http\Controllers\Admin\AddressController;
use App\Http\Controllers\Admin\AdminsController;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\ClientsController;
use App\Http\Controllers\Admin\ColorController;
use App\Http\Controllers\Admin\ContactController;
use App\Http\Controllers\Admin\CountryController;
use App\Http\Controllers\Admin\CouponController;
use App\Http\Controllers\Admin\PartnerController;
use App\Http\Controllers\Admin\FAQController;
use App\Http\Controllers\Admin\HomeController;
use App\Http\Controllers\Admin\LoginController;
use App\Http\Controllers\Admin\MailOfferController;
use App\Http\Controllers\Admin\OrderController;
use App\Http\Controllers\Admin\PaymentsController;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\Admin\ProfileController;
use App\Http\Controllers\Admin\RegionController;
use App\Http\Controllers\Admin\ReportController;
use App\Http\Controllers\Admin\SettingController;
use App\Http\Controllers\Admin\SizeController;
use App\Http\Controllers\Admin\ServicesController;
use App\Http\Controllers\Admin\SocialMediaIconsController;
use App\Http\Controllers\Admin\StepController;
use App\Http\Middleware\Localization;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\AdvertisingController;
use App\Http\Controllers\Admin\StatisticsController;
use App\Http\Controllers\Admin\BannerController;



Route::group(['prefix' => 'admin', 'as' => 'admin.'], function () {
    Route::get('login', [LoginController::class, 'showLoginForm'])->name('login');
    Route::post('login', [LoginController::class, 'login']);
    Route::any('logout', [LoginController::class, 'logout'])->name('logout');
    Route::group(['middleware' => [Localization::class, 'auth']], function () {
        Route::any('/', [HomeController::class, 'index'])->name('home');
        Route::any('profile', [ProfileController::class, 'show'])->name('profile.show');
        Route::put('profile', [ProfileController::class, 'update'])->name('profile.update');

        Route::any('addresses/create/{client}', [AddressController::class, 'create'])->name('addresses.create');
        Route::any('addresses/store/{client}', [AddressController::class, 'store'])->name('addresses.store');
        Route::any('addresses/show/{address}', [AddressController::class, 'show'])->name('addresses.show');
        Route::any('addresses/edit/{address}', [AddressController::class, 'edit'])->name('addresses.edit');
        Route::any('addresses/update/{address}', [AddressController::class, 'udpate'])->name('addresses.update');
        Route::any('addresses/{client}', [AddressController::class, 'index'])->name('addresses.index');
        Route::any('addresses/destroy/{address}', [AddressController::class, 'destroy'])->name('addresses.destroy');

        Route::any('products/export', [ProductController::class, 'export'])->name('products.export');
        Route::any('products/import', [ProductController::class, 'import'])->name('products.import');
        Route::POST('products/{product_id}/image/{image_id}/switch', [ProductController::class, 'switchProductMainImage'])->name('ProductMainImage.switch');
        Route::POST('products/{product_id}/size/{size_id}/switch', [ProductController::class, 'switchProductSize'])->name('productSize.switch');
        Route::GET('products/{product_id}/size/{size_id}', [ProductController::class, 'editSizeColorDetails'])->name('editSizeColorDetails');
        Route::PUT('products/{product_id}/size/{size_id}', [ProductController::class, 'updateSizeColorDetails'])->name('updateSizeColorDetails');
        Route::GET('products/{product_id}/images/{color_id}', [ProductController::class, 'editColorImageDetails'])->name('editColorImageDetails');
        Route::PUT('products/{product_id}/images/{color_id}', [ProductController::class, 'updateColorImageDetails'])->name('updateColorImageDetails');

        Route::any('/orders/last_order_id', [OrderController::class, 'last_order_id'])->name('orders.last_order_id');
        Route::any('/order_status', [OrderController::class, 'changeStatus'])->name('orders.status');
        Route::GET('/orders/{method?}', [OrderController::class, 'index'])->name('orders');
        Route::post('deleteGalleryPhotoAdds', [AdvertisingController::class, 'deleteGalleryPhotoAdds'])->name('deleteGalleryPhotoAdds');
        Route::post('deleteGalleryPhoto', [BannerController::class, 'deleteGalleryPhoto'])->name('deleteGalleryPhoto');
        Route::post('deleteServicePhoto', [ServicesController::class, 'deleteServicePhoto'])->name('deleteServicePhoto');
        Route::post('deleteSliderAdds', [AdvertisingController::class, 'deleteSliderAdds'])->name('deleteSliderAdds');


        Route::resources([
            'admins' => AdminsController::class,
            'clients' => ClientsController::class,
            'adds' => AdvertisingController::class,
            'banners' => BannerController::class,
            'statistics' => StatisticsController::class,
            'faq' => FAQController::class,
            'contact' => ContactController::class,
            'settings' => SettingController::class,
            'payments' => PaymentsController::class,
            'services' => ServicesController::class,
            'countries' => CountryController::class,
            'regions' => RegionController::class,
            "StepSuccess" => StepController::class,
            'products' => ProductController::class,
            'categories' => CategoryController::class,
            'sizes' => SizeController::class,
            'colors' => ColorController::class,
            'partners' => PartnerController::class,
            'coupons' => CouponController::class,
            'mail_offer' => MailOfferController::class,
            'orders' => OrderController::class,
            'social_media_icons' => SocialMediaIconsController::class,
        ]);
        Route::any('coupon_products/{coupon_id}', [CouponController::class, 'CouponProducts'])->name('CouponProducts');

        Route::GET('/settings/{type?}', [SettingController::class, 'index'])->name('settings.index');

        Route::get('reports/sales', [ReportController::class, 'sales'])->name('reports.sales');
        Route::get('reports/financial', [ReportController::class, 'financial'])->name('reports.financial');
        Route::get('reports/client', [ReportController::class, 'client'])->name('reports.client');
        Route::get('reports/payment', [ReportController::class, 'payment'])->name('reports.payment');
        Route::get('reports/products', [ReportController::class, 'products'])->name('reports.products');
        Route::get('reports/mostselling', [ReportController::class, 'mostselling'])->name('reports.mostselling');
        Route::get('reports/vat', [ReportController::class, 'vat'])->name('reports.vat');
        Route::Get('exportData', [ReportController::class, 'exportData'])->name('exportData');
    });
});
