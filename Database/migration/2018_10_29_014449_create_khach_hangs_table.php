<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateKhachHangsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('khach_hangs', function (Blueprint $table) {
            $table->increments('id');
            $table->string('hoten');
            $table->string('gioitinh');
            $table->string('email');
            $table->string('sodienthoai');
            $table->string('tinh');
            $table->string('huyen');
            $table->string('xa');
            $table->string('diachi');
            $table->text('ghichu')->nullable();
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
        Schema::dropIfExists('khach_hangs');
    }
}
