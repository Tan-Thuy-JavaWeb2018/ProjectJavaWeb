<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHoadonTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('hoadon', function (Blueprint $table) {
            $table->increments('id');

            $table->string('hoten');
            $table->string('tinh');
            $table->string('huyen');
            $table->string('xa');
            $table->string('diachi');
            $table->string('dienthoai');
            $table->string('email');
            $table->text('ghichu')->nullable();
            $table->integer('trangthai');

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
        Schema::dropIfExists('hoadon');
    }
}
