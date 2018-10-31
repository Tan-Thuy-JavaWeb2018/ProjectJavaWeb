<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateChitiethoadonTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('chitiethoadon', function (Blueprint $table) {
            $table->increments('id');

            $table->integer('soluong');
            // Khóa liên kết đến hóa đơn
            $table->integer('id_hoadon')->unsigned();
            $table->foreign('id_hoadon')->references('id')->on('hoadon');  
            // Khóa liên kết đến sản phẩm
            $table->integer('id_sanpham')->unsigned();
            $table->foreign('id_sanpham')->references('id')->on('sanpham');  
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('chitiethoadon');
    }
}
