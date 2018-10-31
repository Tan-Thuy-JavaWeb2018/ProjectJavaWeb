<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBinhluanbaivietTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('binhluanbaiviet', function (Blueprint $table) {
            $table->increments('id');

            $table->text('noidung');
            // Khóa liên kết đến bài viết
            $table->integer('id_baiviet')->unsigned();
            $table->foreign('id_baiviet')->references('id')->on('baiviet'); 
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
        Schema::dropIfExists('binhluanbaiviet');
    }
}
