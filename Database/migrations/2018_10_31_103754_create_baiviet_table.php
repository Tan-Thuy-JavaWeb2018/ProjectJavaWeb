<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBaivietTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('baiviet', function (Blueprint $table) {
            $table->increments('id');

            $table->string('tieude');
            $table->text('mota');
            $table->text('noidung');
            $table->text('hinhanh');
            // Khóa liên kết đến tài khoản
            $table->integer('id_taikhoan')->unsigned();
            $table->foreign('id_taikhoan')->references('id')->on('taikhoan'); 
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
        Schema::dropIfExists('baiviet');
    }
}
