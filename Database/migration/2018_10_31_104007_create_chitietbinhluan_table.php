<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateChitietbinhluanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('chitietbinhluan', function (Blueprint $table) {
            $table->increments('id');

            $table->text('noidung');
            // Khóa liên kết đến bình luận bài viết
            $table->integer('id_binhluan')->unsigned();
            $table->foreign('id_binhluan')->references('id')->on('binhluanbaiviet'); 
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
        Schema::dropIfExists('chitietbinhluan');
    }
}
