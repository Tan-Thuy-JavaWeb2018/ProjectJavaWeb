<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateChiTietHoaDonsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('chi_tiet_hoa_dons', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('soluong');
            $table->integer('trangthaithanhtoancthd')->default(0);;
            $table->integer('id_hoadon')->unsigned();
            $table->foreign('id_hoadon')->references('id')->on('hoa_dons');
            $table->integer('id_chitietsanpham')->unsigned();
            $table->foreign('id_chitietsanpham')->references('id')->on('chi_tiet_san_phams');
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
        Schema::dropIfExists('chi_tiet_hoa_dons');
    }
}
